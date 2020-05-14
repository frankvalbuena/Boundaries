<!DOCTYPE html>
<html lang="en">
  <head>
    <title>  Reference</title>
    <link rel="stylesheet" type="text/css" href="css/jazzy.css" />
    <link rel="stylesheet" type="text/css" href="css/highlight.css" />
    <meta charset='utf-8'>
    <script src="js/jquery.min.js" defer></script>
    <script src="js/jazzy.js" defer></script>
    
  </head>
  <body>
    <a title="  Reference"></a>
    <header>
      <div class="content-wrapper">
        <p><a href="index.html"> Docs</a> (58% documented)</p>
      </div>
    </header>
    <div class="content-wrapper">
      <p id="breadcrumbs">
        <a href="index.html"> Reference</a>
        <img id="carat" src="img/carat.png" />
          Reference
      </p>
    </div>
    <div class="content-wrapper">
      <nav class="sidebar">
        <ul class="nav-groups">
          <li class="nav-group-name">
            <a href="Classes.html">Classes</a>
            <ul class="nav-group-tasks">
              <li class="nav-group-task">
                <a href="Classes/AnyBoundary.html">AnyBoundary</a>
              </li>
              <li class="nav-group-task">
                <a href="Classes/AnyBoundary.html#/s:10Boundaries11AnyBoundaryC9InternalsV">– Internals</a>
              </li>
            </ul>
          </li>
          <li class="nav-group-name">
            <a href="Protocols.html">Protocols</a>
            <ul class="nav-group-tasks">
              <li class="nav-group-task">
                <a href="Protocols/AdapterBoundaryProtocol.html">AdapterBoundaryProtocol</a>
              </li>
              <li class="nav-group-task">
                <a href="Protocols/BoundaryListProtocol.html">BoundaryListProtocol</a>
              </li>
              <li class="nav-group-task">
                <a href="Protocols/BoundaryProtocol.html">BoundaryProtocol</a>
              </li>
              <li class="nav-group-task">
                <a href="Protocols/ContainerBoundaryProtocol.html">ContainerBoundaryProtocol</a>
              </li>
              <li class="nav-group-task">
                <a href="Protocols.html#/s:10Boundaries14PluginBoundaryP">PluginBoundary</a>
              </li>
              <li class="nav-group-task">
                <a href="Protocols.html#/s:10Boundaries20RootBoundaryProtocolP">RootBoundaryProtocol</a>
              </li>
            </ul>
          </li>
          <li class="nav-group-name">
            <a href="Structs.html">Structures</a>
            <ul class="nav-group-tasks">
              <li class="nav-group-task">
                <a href="Structs/AnyBoundaryList.html">AnyBoundaryList</a>
              </li>
              <li class="nav-group-task">
                <a href="Structs/Empty.html">Empty</a>
              </li>
              <li class="nav-group-task">
                <a href="Structs/Factory.html">Factory</a>
              </li>
              <li class="nav-group-task">
                <a href="Structs.html#/s:10Boundaries9InputPortV">InputPort</a>
              </li>
              <li class="nav-group-task">
                <a href="Structs/Resolved.html">Resolved</a>
              </li>
              <li class="nav-group-task">
                <a href="Structs/ResolverStack.html">ResolverStack</a>
              </li>
            </ul>
          </li>
          <li class="nav-group-name">
            <a href="Typealiases.html">Type Aliases</a>
            <ul class="nav-group-tasks">
              <li class="nav-group-task">
                <a href="Typealiases.html#/s:10Boundaries15AdapterBoundarya">AdapterBoundary</a>
              </li>
              <li class="nav-group-task">
                <a href="Typealiases.html#/s:10Boundaries8Boundarya">Boundary</a>
              </li>
              <li class="nav-group-task">
                <a href="Typealiases.html#/s:10Boundaries12BoundaryLista">BoundaryList</a>
              </li>
              <li class="nav-group-task">
                <a href="Typealiases.html#/s:10Boundaries17ContainerBoundarya">ContainerBoundary</a>
              </li>
              <li class="nav-group-task">
                <a href="Typealiases.html#/s:10Boundaries8Resolvera">Resolver</a>
              </li>
              <li class="nav-group-task">
                <a href="Typealiases.html#/s:10Boundaries12RootBoundarya">RootBoundary</a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <article class="main-content">
        <section>
          <section class="section">
            
            <p align="center">
  <img width="621" height="72" src="https://github.com/frankvalbuena/Boundaries/blob/master/Documentation/logo.jpg">
</p>

<p>Boundaries is a lightweight framework for creating <a href="https://medium.com/@frankvalbuenam/source-level-boundaries-in-swift-e97027abcb1e">source-level boundaries in swift</a>. It&rsquo;s based on the premise that for enforcing source level boundaries you need to manage the object graph construction based on boundary crossing rules. This framework is useful whether your app is modularized or whether you have all the code under a single module. This is because packages are only a mechanism for deploying and reusing code, but you still need to manage the source code dependencies and handling the object graph construction, for having real boundaries in your code. </p>

<p>The framework is designed to be as unintrusive as possible, it won&rsquo;t pollute your classes with annotations, singletons or special semantics. This is not a dependency injection framework, but rather a framework helping you shape your own object graph construction, based on the layers of your architectural pattern, the components of your architecture etc.</p>

<p>The main propose of the framework is to enfoce boundaries and with them your chosen architecture. This implies having a framework that doesn&rsquo;t imply too much compromise on your code. It doesn&rsquo;t enforces any particular architectural pattern, but rather gives you a tool for helping on the implementation by enforcing your boundaries directly on code.</p>

<p>There&rsquo;s an example app that was easily refactored with this framework <a href="https://github.com/frankvalbuena/iOS-Clean-Architecture-Example">here</a>. You will notice that the number of imports of the framework is reduced to the files definining the boundaries. The 99% of the code remained untouched.</p>
<h2 id='instalation' class='heading'>Instalation</h2>

<p>The framework has support for Carthage and the Swift Package Manager. It supports Mac OS, iOS, iPad OS and Watch OS. It&rsquo;s built on Swift version 5.2.</p>
<h3 id='carthage' class='heading'>Carthage</h3>

<p>For adding Boundaries as a dependency in your project, using <a href="https://github.com/Carthage/Carthage">Carthage</a>,  add the github URL in your <code>Cartfile</code> using semantic versioning, pointing to the latest version available.</p>
<pre class="highlight plaintext"><code>github "frankvalbuena/Boundaries" ~&gt; 1.0
</code></pre>
<h3 id='swift-package-manager' class='heading'>Swift Package Manager</h3>

<p>For adding Boundaries as a dependency in your project, using the <a href="https://swift.org/package-manager/">Swift Package Manager</a>,  add the github URL in your dependencies, targeting the latest version available. Or use <a href="https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app">Xcode option</a>  <code>file &gt; Swift Packages &gt; Add Dependency</code>, add the github URL and that&rsquo;s it.</p>
<pre class="highlight swift"><code><span class="nv">dependencies</span><span class="p">:</span> <span class="p">[</span>
    <span class="o">.</span><span class="nf">package</span><span class="p">(</span><span class="nv">url</span><span class="p">:</span> <span class="s">"frankvalbuena/Boundaries"</span><span class="p">,</span> <span class="o">.</span><span class="nf">upToNextMajor</span><span class="p">(</span><span class="nv">from</span><span class="p">:</span> <span class="s">"1.0.0"</span><span class="p">))</span>
<span class="p">]</span>
</code></pre>
<h2 id='defining-a-boundary' class='heading'>Defining a Boundary</h2>

<p>A boundary can be seen as a factory for objects. For declaring a boundary you create a subclass of  <code><a href="Typealiases.html#/s:10Boundaries8Boundarya">Boundary</a></code>. Like this:</p>
<pre class="highlight swift"><code><span class="kd">import</span> <span class="kt">Boundaries</span>

<span class="c1">// A boundary for the Model Layer. Every boundary must be a class inheraing from Boundary </span>
<span class="kd">final</span> <span class="kd">class</span> <span class="kt">ModelBoundary</span><span class="p">:</span> <span class="kt">Boundary</span> <span class="p">{</span>
    <span class="c1">// By declaring this as a computed property a new object will be created every time this object is requested.</span>
    <span class="k">var</span> <span class="nv">profileValidator</span><span class="p">:</span> <span class="kt">ProfileValidator</span> <span class="p">{</span>
        <span class="k">return</span> <span class="kt">ProfileValidator</span><span class="p">()</span>
    <span class="p">}</span>

    <span class="c1">// Lazy property, the same instance will be used and the creation will be on-demand.</span>
    <span class="c1">// Notice we can cache dependencies without creating global variables like singletons.</span>
    <span class="kd">lazy</span> <span class="k">var</span> <span class="nv">signInTask</span><span class="p">:</span> <span class="kt">SignInTaskProtocol</span> <span class="o">=</span> <span class="p">{</span>
        <span class="k">return</span> <span class="kt">SignInTaskImplementation</span><span class="p">()</span>
    <span class="p">}()</span>

    <span class="c1">// Stored property, also a single instance will be used, but this must be initialized on the init.</span>
    <span class="c1">// When you don't use protocols for declaring your dependencies, that's what is called a Partial Boundary In clean architecture.</span>
    <span class="k">let</span> <span class="nv">profileSession</span><span class="p">:</span> <span class="kt">ProfileSessionFacade</span>

    <span class="c1">// This init is required by the superclass. `Internal` has not public initializer hence</span>
    <span class="c1">// you cannot directly instantiate a Boundary. You need a ContainerBoundary for initializing this.</span>
    <span class="kd">required</span> <span class="k">override</span> <span class="nf">init</span><span class="p">(</span><span class="nv">internal</span><span class="p">:</span> <span class="kt">Internal</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">self</span><span class="o">.</span><span class="n">profileSession</span> <span class="o">=</span> <span class="kt">ProfileSessionFacade</span><span class="p">()</span>
        <span class="k">super</span><span class="o">.</span><span class="nf">init</span><span class="p">(</span><span class="nv">internal</span><span class="p">:</span> <span class="kd">internal</span><span class="p">)</span>
    <span class="p">}</span>
<span class="p">}</span>
</code></pre>

<p>In the example above <code>ModelBoundary</code> is declared as a subclass of Boundary. You can declare properties for each object constructed inside the boundary. Use a stored property if you want to have a single instance or a computed property if you want to create a new one on demand. Also notice that the required initializer prevents you from directly instantiating your boundary. This decision was made on purpose, as a way to prevent your boundary to become singletons, which is an <a href="https://www.youtube.com/watch?v=-FRm3VPhseI&t=36s">antipattern</a> widely used by dependency containers. Instead a boundary must be always initialized by a Container which is meant to build the Boundary Graph.</p>
<h2 id='dependencies' class='heading'>Dependencies</h2>

<p>Each boundary must create objects related to a single area of concern, like a Layer, a Feature, etc. You define the purpose of your boundary. Boundaries collaborate between them, in the same way layers or components are structured to form a collaborative system together. </p>

<p>On the previous example, let&rsquo;s create a boundary for a Presenter Layer, which depends on <code>ModelBoundary</code>. This is done in 2 steps:</p>
<h3 id='input-ports' class='heading'>Input Ports:</h3>

<p>On the Dependee Boundary, in this example the <code>ModelBoundary</code>, declare the properties meant to be accessible from outside of the Boundary with the generic type <code><a href="Structs.html#/s:10Boundaries9InputPortV">InputPort</a></code>.</p>
<pre class="highlight plaintext"><code>import Boundaries

final class ModelBoundary: Boundary {
    // Let's say PaymentsFacade is a class that exists on the Model Layer.
    var paymentsFacade: InputPort&lt;PaymentsFacade&gt; {
        // makeInputPort is a factory method inherited from `Boundary`
        return makeInputPort(implementation: PaymentsFacade())
    }
}
</code></pre>
<h3 id='dependencies-api' class='heading'>Dependencies API</h3>

<p>On the Dependent Boundary, in this example <code>PresenterBoundary</code>, link the Dependee (<code>ModelBoundary</code>) using the dependencies API</p>
<pre class="highlight swift"><code><span class="kd">typealias</span> <span class="kt">Dependencies</span> <span class="o">=</span> <span class="kt">BoundaryList</span><span class="o">.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">THE_DEPENDEE_BOUNDARY_HERE</span><span class="o">&gt;</span>
</code></pre>

<p>This makes all the input ports of <code>ModelBoundary</code> accessible for <code>PresenterBoundary</code>, via the dependencies property inherited from <code><a href="Typealiases.html#/s:10Boundaries8Boundarya">Boundary</a></code>. See the example below:</p>
<pre class="highlight plaintext"><code>import Boundaries

final class PresenterBoundary: Boundary {
    // Declaring the typealias will let Boundary see the input ports of ModelBoundary. You can add up to
    // 20 dependencies on BoundaryList which is a generic type of the Boundaries framework
    typealias Dependencies = BoundaryList.Add&lt;ModelBoundary&gt;

    var paymentsPresenter: InputPort&lt;PaymentsPresenter&gt; {
        // The dependencies property is inherited from Boundary and uses dynamic look-up
        // for accessing all the input ports of ModelBoundary, this also gives you autocomplete support.
        let paymentsFacade = self.dependencies.paymentFacade
        return makeInputPort(implementation: PaymentsPresenter(paymentsFacade: paymentsFacade))
    }
}
</code></pre>

<p>Notice that only by declaring the typealias you can access the input ports of ModelBoundary. You don&rsquo;t have to create an initializer for receving those input ports, that&rsquo;s because that&rsquo;s done automatically by the base class Boundary. You only must care about constructing the objects of your boundary and declaring the boundary dependencies. The construction of the boundary is deferred to be done on a Container boundary.</p>
<h2 id='plugins' class='heading'>Plugins</h2>

<p>Another way to declare dependencies is by using <a href="https://en.wikipedia.org/wiki/Dependency_inversion_principle">dependency inversion</a>. So instead of depending on a existing boundary, the boundary itself can define an abstract boundary that can be implemented by other boundary. The benefit of doing this of course is that you avoid depending on especific boundaries, making your boundaries independently deployable. This is usually called <a href="https://en.wikipedia.org/wiki/Plug-in_(computing)">Plugin Architecture</a>.</p>

<p>On the previous example let&rsquo;s create a plugin for handling the persistence and webservices for the <code>ModelBoundary</code>. You can do this in 2 steps:</p>
<h3 id='plugin-boundaries' class='heading'>Plugin Boundaries</h3>

<p>In order to declaring a plugin inside your boundary, you define a struct conforming to the protocol PluginBoundary, define all the input ports you need, and then add the plugin as a dependency in the same way we did with PresenterBoundary before.</p>
<pre class="highlight swift"><code><span class="kd">final</span> <span class="kd">class</span> <span class="kt">ModelBoundary</span><span class="p">:</span> <span class="kt">Boundary</span> <span class="p">{</span>
    <span class="c1">// Use structs to declare your plugins inheriting from `PluginBoundary`.</span>
    <span class="kd">struct</span> <span class="kt">Plugin</span><span class="p">:</span> <span class="kt">PluginBoundary</span> <span class="p">{</span>
        <span class="c1">// As any other boundary, you must declare your properties as InputPorts to make it accessible</span>
        <span class="c1">// By the dependent boundaries.</span>
        <span class="k">var</span> <span class="nv">paymentPersistence</span><span class="p">:</span> <span class="kt">InputPort</span><span class="o">&lt;</span><span class="kt">PaymentPersistence</span><span class="o">&gt;</span>
        <span class="k">var</span> <span class="nv">paymentService</span><span class="p">:</span> <span class="kt">InputPort</span><span class="o">&lt;</span><span class="kt">PaymentService</span><span class="o">&gt;</span>
    <span class="p">}</span>
    <span class="c1">// Add the plugin to the dependencies. Plugin is a boundary then you follow the same approach.</span>
    <span class="kd">typealias</span> <span class="kt">Dependencies</span> <span class="o">=</span> <span class="kt">BoundaryList</span><span class="o">.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">Plugin</span><span class="o">&gt;</span>

    <span class="k">var</span> <span class="nv">paymentsFacade</span><span class="p">:</span> <span class="kt">InputPort</span><span class="o">&lt;</span><span class="kt">PaymentsFacade</span><span class="o">&gt;</span> <span class="p">{</span>
        <span class="c1">// You can now use the input ports of the plugin to create your objects.</span>
        <span class="c1">// ModelBoundary doesn't care who will implement those dependencies, it only cares about</span>
        <span class="c1">// declaring them and using them.</span>
        <span class="k">let</span> <span class="nv">facade</span> <span class="o">=</span>  <span class="kt">PaymentsFacade</span><span class="p">(</span>
            <span class="nv">persistence</span><span class="p">:</span> <span class="k">self</span><span class="o">.</span><span class="n">dependencies</span><span class="o">.</span><span class="n">paymentPersistence</span><span class="p">,</span>
            <span class="nv">service</span><span class="p">:</span> <span class="k">self</span><span class="o">.</span><span class="n">dependencies</span><span class="o">.</span><span class="n">paymentService</span>
        <span class="p">)</span>
        <span class="k">return</span> <span class="nf">makeInputPort</span><span class="p">(</span><span class="nv">implementation</span><span class="p">:</span> <span class="n">facade</span><span class="p">)</span>
    <span class="p">}</span>
<span class="p">}</span>
</code></pre>
<h3 id='plugin-adapters' class='heading'>Plugin Adapters</h3>

<p>Now that you have declared your plugin, you must implement it by an Adapter Boundary.  Let&rsquo;s create a services layer acting as an adapter for the ModelBoundary&rsquo;s Plugin. In order to do this, you define a new boundary inheriting from <code><a href="Typealiases.html#/s:10Boundaries15AdapterBoundarya">AdapterBoundary</a></code> like this:</p>
<pre class="highlight swift"><code><span class="kd">final</span> <span class="kd">class</span> <span class="kt">Service</span><span class="p">:</span> <span class="kt">AdapterBoundary</span> <span class="p">{</span>
    <span class="c1">// This part of the AdapterBoundary, you must define a typealias of the plugin you are implementing.</span>
    <span class="kd">typealias</span> <span class="kt">PluginAdaptee</span> <span class="o">=</span> <span class="kt">ModelBoundary</span><span class="o">.</span><span class="kt">Plugin</span>
    <span class="c1">// In order to implement this you may need to depend on other boundary.</span>
    <span class="kd">typealias</span> <span class="kt">Dependencies</span> <span class="o">=</span> <span class="kt">BoundaryList</span><span class="o">.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">AFrameworkRelatedBoundary</span><span class="o">&gt;</span>

    <span class="c1">// This function is part of AdapterBoundary. This is the place where you create the plugin implementation.</span>
    <span class="kd">func</span> <span class="nf">makePlugin</span><span class="p">()</span> <span class="o">-&gt;</span> <span class="kt">ModelBoundary</span><span class="o">.</span><span class="kt">Plugin</span> <span class="p">{</span>
        <span class="c1">// Create the input ports of the plugins, providing the implementation.</span>
        <span class="k">return</span> <span class="kt">ModelBoundary</span><span class="o">.</span><span class="kt">Plugin</span><span class="p">(</span>
            <span class="nv">paymentPersistence</span><span class="p">:</span> <span class="nf">makeInputPort</span><span class="p">(</span><span class="nv">implementation</span><span class="p">:</span> <span class="kt">CoreDataPaymentPersistence</span><span class="p">()),</span>
            <span class="nv">paymentService</span><span class="p">:</span> <span class="nf">makeInputPort</span><span class="p">(</span><span class="nv">implementation</span><span class="p">:</span> <span class="kt">PlaymentWebService</span><span class="p">())</span>
        <span class="p">)</span>
    <span class="p">}</span>
<span class="p">}</span>
</code></pre>

<p>You could create different adapters for a given plugin, that&rsquo;s the advantage of this plugin approach, making easy to swap implementations. This is useful when you want to decouple frameworks from the business rules. In order to connect the adapter to the plugin, you need to create a Container Boundary.</p>
<h2 id='container-boundary' class='heading'>Container Boundary</h2>

<p>As you have seen boundaries segregate the object graph construction to multiple boundaries, each one constructing objects from a single area of concern, and they comunicate via the dependencies API and the InputPorts. Boundaries can be composed also with Containers. A container boundary can have subboundaries, and it can construct its subboundaries resolving its dependencies. This is very useful for creating feature boundaries. A feature boundary can be a container which has subboundaries for each layer.</p>

<p>Continuing with the previous example let&rsquo;s create a boundary for the Payments feature. For this you do 2 things. First define a new boundary inheriting from <code><a href="Typealiases.html#/s:10Boundaries17ContainerBoundarya">ContainerBoundary</a></code> and then define your subboundaries using the Subbondaries API. Finally you resolve each subboundary using the Resolver API. Like this:</p>
<pre class="highlight swift"><code><span class="c1">// A boundary for the payments feature</span>
<span class="kd">final</span> <span class="kd">class</span> <span class="kt">PaymentsBoundary</span><span class="p">:</span> <span class="kt">ContainerBoundary</span> <span class="p">{</span>
    <span class="c1">// Create a Subboundaries typealias using `BoundaryList` adding each children.</span>
    <span class="kd">typealias</span> <span class="kt">Subboundaries</span> <span class="o">=</span> <span class="kt">BoundaryList</span>
        <span class="o">.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">Model</span><span class="o">&gt;</span>
        <span class="o">.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">Presenter</span><span class="o">&gt;</span>
        <span class="o">.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">View</span><span class="o">&gt;</span>
        <span class="o">.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">AFrameworkRelatedBoundary</span><span class="o">&gt;</span>

    <span class="c1">// Create a stored property for each subboundary. After resolving a boundary you get back</span>
    <span class="c1">// a Resolved object, which gives you access ONLY to the input ports of the boundary. The</span>
    <span class="c1">// Boundary itself remains private. This protects the encapsulation and the access to </span>
    <span class="c1">// internal dependencies of the boundary</span>
    <span class="kd">lazy</span> <span class="k">var</span> <span class="nv">model</span><span class="p">:</span> <span class="kt">ModelBoundary</span><span class="o">.</span><span class="kt">Resolved</span> <span class="o">=</span> <span class="p">{</span>
        <span class="c1">// Call the inherited function `resolver(for:)` which gives you a builder for your dependency.</span>
        <span class="k">return</span> <span class="nf">resolver</span><span class="p">(</span><span class="nv">for</span><span class="p">:</span> <span class="kt">Model</span><span class="o">.</span><span class="k">self</span><span class="p">)</span><span class="o">.</span>
            <span class="o">.</span><span class="nf">resolve</span><span class="p">(</span><span class="nv">plugin</span><span class="p">:</span> <span class="k">self</span><span class="o">.</span><span class="n">service</span><span class="p">)</span> <span class="c1">// You connect the plugin with the adapter here</span>
            <span class="o">.</span><span class="nf">resolved</span><span class="p">()</span> <span class="c1">// After resolving each dependency, you call .resolved() and you are done.</span>
    <span class="p">}()</span>

    <span class="c1">///  Same as before, the resolver works with generics and have the needed functions to resolve the boundary</span>
    <span class="kd">lazy</span> <span class="k">var</span> <span class="nv">presenter</span><span class="p">:</span> <span class="kt">PresenterBoundary</span><span class="o">.</span><span class="kt">Resolved</span> <span class="o">=</span> <span class="p">{</span>
        <span class="k">return</span> <span class="nf">resolver</span><span class="p">(</span><span class="nv">for</span><span class="p">:</span> <span class="kt">PresenterBoundary</span><span class="o">.</span><span class="k">self</span><span class="p">)</span>
            <span class="o">.</span><span class="nf">resolve</span><span class="p">(</span><span class="nv">dependency</span><span class="p">:</span> <span class="k">self</span><span class="o">.</span><span class="n">model</span><span class="p">)</span> <span class="c1">// In here you connect the presenter with the model.</span>
            <span class="o">.</span><span class="nf">resolved</span><span class="p">()</span>
    <span class="p">}()</span>

    <span class="c1">/// You can resolve the adapter defined in the previous example here.</span>
    <span class="kd">lazy</span> <span class="k">var</span> <span class="nv">service</span><span class="p">:</span> <span class="kt">Service</span><span class="o">.</span><span class="kt">Resolved</span> <span class="o">=</span> <span class="p">{</span>
        <span class="k">return</span> <span class="nf">resolver</span><span class="p">(</span><span class="nv">for</span><span class="p">:</span> <span class="kt">Service</span><span class="o">.</span><span class="k">self</span><span class="p">)</span>
            <span class="o">.</span><span class="nf">resolve</span><span class="p">(</span><span class="nv">dependency</span><span class="p">:</span> <span class="k">self</span><span class="o">.</span><span class="n">framework</span><span class="p">)</span>
            <span class="o">.</span><span class="nf">resolved</span><span class="p">()</span>
    <span class="p">}()</span>

    <span class="kd">lazy</span> <span class="k">var</span> <span class="nv">framework</span><span class="p">:</span> <span class="kt">AFramework</span><span class="o">.</span><span class="kt">Resolved</span> <span class="o">=</span> <span class="p">{</span>
        <span class="k">return</span> <span class="nf">resolver</span><span class="p">(</span><span class="nv">for</span><span class="p">:</span> <span class="kt">AFramework</span><span class="o">.</span><span class="k">self</span><span class="p">)</span><span class="o">.</span><span class="nf">resolved</span><span class="p">()</span>
    <span class="p">}()</span>

    <span class="c1">// Finally you can create an input port based on the input ports of your children.</span>
    <span class="c1">// In this case since this feature uses MVP, it only exposes the view to respect the flow.</span>
    <span class="k">var</span> <span class="nv">paymentsView</span><span class="p">:</span> <span class="kt">InputPort</span><span class="o">&lt;</span><span class="kt">UIViewController</span><span class="o">&gt;</span> <span class="p">{</span>
        <span class="k">return</span> <span class="nf">makeInputPort</span><span class="p">(</span><span class="nv">implementation</span><span class="p">:</span> <span class="n">view</span><span class="o">.</span><span class="n">paymentsView</span><span class="p">)</span>
    <span class="p">}</span>
<span class="p">}</span>
</code></pre>

<p>As you can see Container Boundaries give you a big power for composing boundaries and shaping the architecture of your app. This composition creates a Boundaries graph, which will end up in a RootBoundary.</p>
<h2 id='root-boundary' class='heading'>Root Boundary</h2>

<p><code><a href="Typealiases.html#/s:10Boundaries12RootBoundarya">RootBoundary</a></code> is just a subclass of a Container boundary, the only difference is that the root boundary can be built by you root object, in iOS for instance that root object would be the AppDelegate. Following the same example, we can create an Application Boundary inheriting from  <code><a href="Typealiases.html#/s:10Boundaries12RootBoundarya">RootBoundary</a></code> with the feature boundaries of the app. (See the Container Boundary section for an example). Finally you can create an instance of the root boundary and start your app, always retain the root boundary as it contains the boundary graph, and each boundary can contain objects. See the example below:</p>
<pre class="highlight swift"><code>

<span class="kd">final</span> <span class="kd">class</span> <span class="kt">ApplicationBoundary</span><span class="p">:</span> <span class="kt">RootBoundary</span> <span class="p">{</span>
    <span class="c1">// Root boundary is a container boundary so it can have subboundaries.</span>
    <span class="kd">typealias</span> <span class="kt">Subboundaries</span> <span class="o">=</span> <span class="kt">BoundaryList</span><span class="o">.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">NavigationBoundary</span><span class="o">&gt;.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">ProfileBoundary</span><span class="o">&gt;.</span><span class="kt">Add</span><span class="o">&lt;</span><span class="kt">PaymentsBoundary</span><span class="o">&gt;</span> <span class="c1">//...</span>


    <span class="c1">// Define a input port for the root view controller.</span>
    <span class="k">var</span> <span class="nv">rootView</span><span class="p">:</span> <span class="kt">InputPort</span><span class="o">&lt;</span><span class="kt">UIViewController</span><span class="o">&gt;</span> <span class="p">{</span>
        <span class="c1">// navigationBoundary is a subboundary of the root boundary.</span>
        <span class="k">return</span> <span class="nf">makeInputPort</span><span class="p">(</span><span class="nv">implementation</span><span class="p">:</span> <span class="k">self</span><span class="o">.</span><span class="n">navigationBoundary</span><span class="o">.</span><span class="n">launchView</span><span class="p">)</span>
    <span class="p">}</span>

    <span class="c1">// In here create your subboundaries using the resolver API... look at the Container Boundary to know how to do this.</span>
    <span class="k">var</span> <span class="nv">navigationBoundary</span><span class="p">:</span> <span class="kt">NavigationBoundary</span><span class="o">.</span><span class="kt">Resolved</span> <span class="p">{</span>
        <span class="c1">//... create your subboundary.</span>
    <span class="p">}</span>
<span class="p">}</span>

<span class="kd">final</span> <span class="kd">class</span> <span class="kt">SceneDelegate</span><span class="p">:</span> <span class="kt">UIResponder</span><span class="p">,</span> <span class="kt">UIWindowSceneDelegate</span> <span class="p">{</span>
    <span class="c1">// The root boundary is the only boundary that is directly initializable. Same as the other boundaries, </span>
    <span class="c1">// it returns you a Resolved type which gives you access to all the input ports of the root boundary. </span>
    <span class="c1">// You must retain this object as it holds all the boundary graph and the stored dependencies on them.</span>
    <span class="kd">lazy</span> <span class="k">var</span> <span class="nv">appBoundary</span> <span class="o">=</span> <span class="kt">ApplicationBoundary</span><span class="o">.</span><span class="kt">Resolved</span><span class="p">()</span>
    <span class="k">var</span> <span class="nv">window</span><span class="p">:</span> <span class="kt">UIWindow</span><span class="p">?</span>

    <span class="kd">func</span> <span class="nf">scene</span><span class="p">(</span><span class="n">_</span> <span class="nv">scene</span><span class="p">:</span> <span class="kt">UIScene</span><span class="p">,</span>
               <span class="n">willConnectTo</span> <span class="nv">session</span><span class="p">:</span> <span class="kt">UISceneSession</span><span class="p">,</span>
               <span class="n">options</span> <span class="nv">connectionOptions</span><span class="p">:</span> <span class="kt">UIScene</span><span class="o">.</span><span class="kt">ConnectionOptions</span><span class="p">)</span> <span class="p">{</span>
        <span class="k">guard</span> <span class="k">let</span> <span class="nv">windowScene</span> <span class="o">=</span> <span class="p">(</span><span class="n">scene</span> <span class="k">as?</span> <span class="kt">UIWindowScene</span><span class="p">)</span> <span class="k">else</span> <span class="p">{</span> <span class="k">return</span> <span class="p">}</span>
        <span class="k">let</span> <span class="nv">window</span> <span class="o">=</span> <span class="kt">UIWindow</span><span class="p">(</span><span class="nv">windowScene</span><span class="p">:</span> <span class="n">windowScene</span><span class="p">)</span>

        <span class="c1">// In here you ask for the rootView via the input port of the appBoundary.</span>
        <span class="n">window</span><span class="o">.</span><span class="n">rootViewController</span> <span class="o">=</span> <span class="n">appBoundary</span><span class="o">.</span><span class="n">rootView</span>
        <span class="n">window</span><span class="o">.</span><span class="nf">makeKeyAndVisible</span><span class="p">()</span>
        <span class="k">self</span><span class="o">.</span><span class="n">window</span> <span class="o">=</span> <span class="n">window</span>
    <span class="p">}</span>
<span class="p">}</span>

</code></pre>

<p>As you can see we didn&rsquo;t use singletons at all, and everything is instantiated as it must be. I really encourage you to give it a try to this framework and look this <a href="https://github.com/frankvalbuena/iOS-Clean-Architecture-Example">example</a>. You may have notice the framework doesn&rsquo;t pollute your classes at all. The  <code>import Boundaries</code> must live in your boundary classes and your other classes would remain untouched. You can easily integrate this framework to your existing project as it adapts well. Mostly would imply refactoring your factories, service locators or whatever you are using to create your object graph to use this Boundaries APIs.</p>
<h2 id='license' class='heading'>License</h2>

<p>Copyright 2020, Frank Valbuena.</p>

<p>Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the &ldquo;Software&rdquo;), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:</p>

<p>The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.</p>

<p>THE SOFTWARE IS PROVIDED &ldquo;AS IS&rdquo;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.</p>

          </section>
        </section>
        <section id="footer">
          <p>&copy; 2020 <a class="link" href="" target="_blank" rel="external"></a>. All rights reserved. (Last updated: 2020-05-13)</p>
          <p>Generated by <a class="link" href="https://github.com/realm/jazzy" target="_blank" rel="external">jazzy ♪♫ v0.13.3</a>, a <a class="link" href="https://realm.io" target="_blank" rel="external">Realm</a> project.</p>
        </section>
      </article>
    </div>
  </body>
</div>
</html>
