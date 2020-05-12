//
//  Example.swift
//  Boundaries
//
//  Created by Frank Valbuena on 7/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation
import Boundaries

final class Entity: Boundary {
    var entity1: InputPort<String> {
        return makeInputPort(implementation: "entity1")
    }
}

final class UseCase: Boundary {
    struct Plugin: PluginBoundary {
        var someInterface: InputPort<String>
        var otherInterface: InputPort<String>
    }
    typealias Dependencies = BoundaryList.Add<Plugin>.Add<Entity>
    
    var lookUpToDependency: InputPort<String> {
        return makeInputPort(implementation: self.dependencies.entity1)
    }

    var lookUpToPlugin: InputPort<String> {
        return makeInputPort(implementation: "[UseCase][Plugin]" + self.dependencies.someInterface)
    }
}

final class AFramework: Boundary {
    var frameworkImplementation: InputPort<String> {
        return makeInputPort(implementation: "[AFramework]")
    }
}

final class Service: AdapterBoundary {
    typealias PluginAdaptee = UseCase.Plugin
    typealias Dependencies = BoundaryList.Add<AFramework>
    
    var testing: String {
        return "can you see me adapter?"
    }
    
    func makePlugin() -> UseCase.Plugin {
        return PluginAdaptee(
            someInterface: makeInputPort(implementation: "[Service]" + self.dependencies.frameworkImplementation),
            otherInterface: makeInputPort(implementation: self.testing)
        )
    }
}

final class Application: RootBoundary {
    typealias Subboundaries = BoundaryList.Add<Entity>.Add<UseCase>.Add<Service>.Add<AFramework>
    
    lazy var entity: Entity.Resolved = {
        return resolver(for: Entity.self).resolved()
    }()
    
    lazy var usecase: UseCase.Resolved = {
        return resolver(for: UseCase.self)
            .resolve(dependency: self.entity)
            .resolve(plugin: self.service)
            .resolved()
    }()
    
    lazy var service: Service.Resolved = {
        return resolver(for: Service.self)
            .resolve(dependency: self.framework)
            .resolved()
    }()
    
    lazy var framework: AFramework.Resolved = {
        return resolver(for: AFramework.self).resolved()
    }()
}

extension Application {
    var lookUpToPlugin: InputPort<String> {
        return makeInputPort(implementation: "[Application]" + usecase.lookUpToPlugin)
    }
}
