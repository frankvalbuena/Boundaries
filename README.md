<p align="center">
  <img width="621" height="72" src="https://github.com/frankvalbuena/Boundaries/blob/master/Documentation/logo.jpg">
</p>

Boundaries is a lightweight framework for creating [source-level boundaries in swift](https://medium.com/@frankvalbuenam/source-level-boundaries-in-swift-e97027abcb1e). It's based on the premise that for enforcing source level boundaries you need to manage the object graph construction based on boundary crossing rules. This framework is useful whether your app is modularized or whether you have all the code under a single module. This is because packages are only a mechanism for deploying and reusing code, but you still need to manage the source code dependencies and handling the object graph construction, for having real boundaries in your code. 

The framework is designed to be as unintrusive as possible, it won't pollute your classes with annotations, singletons or special semantics. This is not a dependency injection framework, but rather a framework helping you shape your own object graph construction, based on the layers of your architectural pattern, the components of your architecture etc.

The main propose of the framework is to enfoce boundaries and with them your chosen architecture. This implies having a framework that doesn't imply too much compromise on your code. It doesn't enforces any particular architectural pattern, but rather gives you a tool for helping on the implementation by enforcing your boundaries directly on code.

There's an example app that was easily refactored with this framework [here](https://github.com/frankvalbuena/iOS-Clean-Architecture-Example). You will notice that the number of imports of the framework is reduced to the files definining the boundaries. The 99% of the code remained untouched. Look in the [reference](https://github.com/frankvalbuena/Boundaries/blob/master/Documentation/index.html) for a more detailed documentation.

## Instalation

The framework has support for Carthage and the Swift Package Manager. It supports Mac OS, iOS, iPad OS and Watch OS. It's built on Swift version 5.2.

### Carthage

For adding Boundaries as a dependency in your project, using [Carthage](https://github.com/Carthage/Carthage),  add the github URL in your `Cartfile` using semantic versioning, pointing to the latest version available.

```ogdl
github "frankvalbuena/Boundaries" ~> 1.0
```

### Swift Package Manager

For adding Boundaries as a dependency in your project, using the [Swift Package Manager](https://swift.org/package-manager/),  add the github URL in your dependencies, targeting the latest version available. Or use [Xcode option](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)  `file > Swift Packages > Add Dependency`, add the github URL and that's it.

```swift
dependencies: [
    .package(url: "frankvalbuena/Boundaries", .upToNextMajor(from: "1.0.0"))
]
```

## Defining a Boundary

A boundary can be seen as a factory for objects. For declaring a boundary you create a subclass of  `Boundary`. Like this:

```swift
import Boundaries

// A boundary for the Model Layer. Every boundary must be a class inheraing from Boundary 
final class ModelBoundary: Boundary {
    // By declaring this as a computed property a new object will be created every time this object is requested.
    var profileValidator: ProfileValidator {
        return ProfileValidator()
    }
    
    // Lazy property, the same instance will be used and the creation will be on-demand.
    // Notice we can cache dependencies without creating global variables like singletons.
    lazy var signInTask: SignInTaskProtocol = {
        return SignInTaskImplementation()
    }()
    
    // Stored property, also a single instance will be used, but this must be initialized on the init.
    // When you don't use protocols for declaring your dependencies, that's what is called a Partial Boundary In clean architecture.
    let profileSession: ProfileSessionFacade
    
    // This init is required by the superclass. `Internal` has not public initializer hence
    // you cannot directly instantiate a Boundary. You need a ContainerBoundary for initializing this.
    required override init(internal: Internal) {
        self.profileSession = ProfileSessionFacade()
        super.init(internal: internal)
    }
}
```

In the example above `ModelBoundary` is declared as a subclass of Boundary. You can declare properties for each object constructed inside the boundary. Use a stored property if you want to have a single instance or a computed property if you want to create a new one on demand. Also notice that the required initializer prevents you from directly instantiating your boundary. This decision was made on purpose, as a way to prevent your boundary to become singletons, which is an [antipattern](https://www.youtube.com/watch?v=-FRm3VPhseI&t=36s) widely used by dependency containers. Instead a boundary must be always initialized by a Container which is meant to build the Boundary Graph.

## Dependencies

Each boundary must create objects related to a single area of concern, like a Layer, a Feature, etc. You define the purpose of your boundary. Boundaries collaborate between them, in the same way layers or components are structured to form a collaborative system together. 

On the previous example, let's create a boundary for a Presenter Layer, which depends on `ModelBoundary`. This is done in 2 steps:

### Input Ports: 

On the Dependee Boundary, in this example the `ModelBoundary`, declare the properties meant to be accessible from outside of the Boundary with the generic type `InputPort`.


```Swift
import Boundaries

final class ModelBoundary: Boundary {
    // Let's say PaymentsFacade is a class that exists on the Model Layer.
    var paymentsFacade: InputPort<PaymentsFacade> {
        // makeInputPort is a factory method inherited from `Boundary`
        return makeInputPort(implementation: PaymentsFacade())
    }
}
```

### Dependencies API

On the Dependent Boundary, in this example `PresenterBoundary`, link the Dependee (`ModelBoundary`) using the dependencies API

```swift
typealias Dependencies = BoundaryList.Add<THE_DEPENDEE_BOUNDARY_HERE>
```

This makes all the input ports of `ModelBoundary` accessible for `PresenterBoundary`, via the dependencies property inherited from `Boundary`. See the example below:


```Swift
import Boundaries

final class PresenterBoundary: Boundary {
    // Declaring the typealias will let Boundary see the input ports of ModelBoundary. You can add up to
    // 20 dependencies on BoundaryList which is a generic type of the Boundaries framework
    typealias Dependencies = BoundaryList.Add<ModelBoundary>
    
    var paymentsPresenter: InputPort<PaymentsPresenter> {
        // The dependencies property is inherited from Boundary and uses dynamic look-up
        // for accessing all the input ports of ModelBoundary, this also gives you autocomplete support.
        let paymentsFacade = self.dependencies.paymentFacade
        return makeInputPort(implementation: PaymentsPresenter(paymentsFacade: paymentsFacade))
    }
}
```

Notice that only by declaring the typealias you can access the input ports of ModelBoundary. You don't have to create an initializer for receving those input ports, that's because that's done automatically by the base class Boundary. You only must care about constructing the objects of your boundary and declaring the boundary dependencies. The construction of the boundary is deferred to be done on a Container boundary.

## Plugins

Another way to declare dependencies is by using [dependency inversion](https://en.wikipedia.org/wiki/Dependency_inversion_principle). So instead of depending on a existing boundary, the boundary itself can define an abstract boundary that can be implemented by other boundary. The benefit of doing this of course is that you avoid depending on especific boundaries, making your boundaries independently deployable. This is usually called [Plugin Architecture](https://en.wikipedia.org/wiki/Plug-in_(computing)).

On the previous example let's create a plugin for handling the persistence and webservices for the `ModelBoundary`. You can do this in 2 steps:

### Plugin Boundaries

In order to declaring a plugin inside your boundary, you define a struct conforming to the protocol PluginBoundary, define all the input ports you need, and then add the plugin as a dependency in the same way we did with PresenterBoundary before.

```swift
final class ModelBoundary: Boundary {
    // Use structs to declare your plugins inheriting from `PluginBoundary`.
    struct Plugin: PluginBoundary {
        // As any other boundary, you must declare your properties as InputPorts to make it accessible
        // By the dependent boundaries.
        var paymentPersistence: InputPort<PaymentPersistence>
        var paymentService: InputPort<PaymentService>
    }
    // Add the plugin to the dependencies. Plugin is a boundary then you follow the same approach.
    typealias Dependencies = BoundaryList.Add<Plugin>
    
    var paymentsFacade: InputPort<PaymentsFacade> {
        // You can now use the input ports of the plugin to create your objects.
        // ModelBoundary doesn't care who will implement those dependencies, it only cares about
        // declaring them and using them.
        let facade =  PaymentsFacade(
            persistence: self.dependencies.paymentPersistence,
            service: self.dependencies.paymentService
        )
        return makeInputPort(implementation: facade)
    }
}
```

### Plugin Adapters

Now that you have declared your plugin, you must implement it by an Adapter Boundary.  Let's create a services layer acting as an adapter for the ModelBoundary's Plugin. In order to do this, you define a new boundary inheriting from `AdapterBoundary` like this:

```swift
final class Service: AdapterBoundary {
    // This part of the AdapterBoundary, you must define a typealias of the plugin you are implementing.
    typealias PluginAdaptee = ModelBoundary.Plugin
    // In order to implement this you may need to depend on other boundary.
    typealias Dependencies = BoundaryList.Add<AFrameworkRelatedBoundary>
    
    // This function is part of AdapterBoundary. This is the place where you create the plugin implementation.
    func makePlugin() -> ModelBoundary.Plugin {
        // Create the input ports of the plugins, providing the implementation.
        return ModelBoundary.Plugin(
            paymentPersistence: makeInputPort(implementation: CoreDataPaymentPersistence()),
            paymentService: makeInputPort(implementation: PlaymentWebService())
        )
    }
}
```

You could create different adapters for a given plugin, that's the advantage of this plugin approach, making easy to swap implementations. This is useful when you want to decouple frameworks from the business rules. In order to connect the adapter to the plugin, you need to create a Container Boundary.

## Container Boundary

As you have seen boundaries segregate the object graph construction to multiple boundaries, each one constructing objects from a single area of concern, and they comunicate via the dependencies API and the InputPorts. Boundaries can be composed also with Containers. A container boundary can have subboundaries, and it can construct its subboundaries resolving its dependencies. This is very useful for creating feature boundaries. A feature boundary can be a container which has subboundaries for each layer.

Continuing with the previous example let's create a boundary for the Payments feature. For this you do 2 things. First define a new boundary inheriting from `ContainerBoundary` and then define your subboundaries using the Subbondaries API. Finally you resolve each subboundary using the Resolver API. Like this:

```swift
// A boundary for the payments feature
final class PaymentsBoundary: ContainerBoundary {
    // Create a Subboundaries typealias using `BoundaryList` adding each children.
    typealias Subboundaries = BoundaryList
        .Add<Model>
        .Add<Presenter>
        .Add<View>
        .Add<AFrameworkRelatedBoundary>
    
    // Create a stored property for each subboundary. After resolving a boundary you get back
    // a Resolved object, which gives you access ONLY to the input ports of the boundary. The
    // Boundary itself remains private. This protects the encapsulation and the access to 
    // internal dependencies of the boundary
    lazy var model: ModelBoundary.Resolved = {
        // Call the inherited function `resolver(for:)` which gives you a builder for your dependency.
        return resolver(for: Model.self).
            .resolve(plugin: self.service) // You connect the plugin with the adapter here
            .resolved() // After resolving each dependency, you call .resolved() and you are done.
    }()
    
    ///  Same as before, the resolver works with generics and have the needed functions to resolve the boundary
    lazy var presenter: PresenterBoundary.Resolved = {
        return resolver(for: PresenterBoundary.self)
            .resolve(dependency: self.model) // In here you connect the presenter with the model.
            .resolved()
    }()
    
    /// You can resolve the adapter defined in the previous example here.
    lazy var service: Service.Resolved = {
        return resolver(for: Service.self)
            .resolve(dependency: self.framework)
            .resolved()
    }()
    
    lazy var framework: AFramework.Resolved = {
        return resolver(for: AFramework.self).resolved()
    }()
    
    // Finally you can create an input port based on the input ports of your children.
    // In this case since this feature uses MVP, it only exposes the view to respect the flow.
    var paymentsView: InputPort<UIViewController> {
        return makeInputPort(implementation: view.paymentsView)
    }
}
```

As you can see Container Boundaries give you a big power for composing boundaries and shaping the architecture of your app. This composition creates a Boundaries graph, which will end up in a RootBoundary.

## Root Boundary

`RootBoundary` is just a subclass of a Container boundary, the only difference is that the root boundary can be built by you root object, in iOS for instance that root object would be the AppDelegate. Following the same example, we can create an Application Boundary inheriting from  `RootBoundary` with the feature boundaries of the app. (See the Container Boundary section for an example). Finally you can create an instance of the root boundary and start your app, always retain the root boundary as it contains the boundary graph, and each boundary can contain objects. See the example below:

```swift


final class ApplicationBoundary: RootBoundary {
    // Root boundary is a container boundary so it can have subboundaries.
    typealias Subboundaries = BoundaryList.Add<NavigationBoundary>.Add<ProfileBoundary>.Add<PaymentsBoundary> //...
    
    
    // Define a input port for the root view controller.
    var rootView: InputPort<UIViewController> {
        // navigationBoundary is a subboundary of the root boundary.
        return makeInputPort(implementation: self.navigationBoundary.launchView)
    }
    
    // In here create your subboundaries using the resolver API... look at the Container Boundary to know how to do this.
    var navigationBoundary: NavigationBoundary.Resolved {
        //... create your subboundary.
    }
}

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    // The root boundary is the only boundary that is directly initializable. Same as the other boundaries, 
    // it returns you a Resolved type which gives you access to all the input ports of the root boundary. 
    // You must retain this object as it holds all the boundary graph and the stored dependencies on them.
    lazy var appBoundary = ApplicationBoundary.Resolved()
    var window: UIWindow?
    
    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
        // In here you ask for the rootView via the input port of the appBoundary.
        window.rootViewController = appBoundary.rootView
        window.makeKeyAndVisible()
        self.window = window
    }
}

```

As you can see we didn't use singletons at all, and everything is instantiated as it must be. I really encourage you to give it a try to this framework and look this [example]( https://github.com/frankvalbuena/iOS-Clean-Architecture-Example). You may have notice the framework doesn't pollute your classes at all. The  `import Boundaries` must live in your boundary classes and your other classes would remain untouched. You can easily integrate this framework to your existing project as it adapts well. Mostly would imply refactoring your factories, service locators or whatever you are using to create your object graph to use this Boundaries APIs.

## License

Copyright 2020, Frank Valbuena.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
