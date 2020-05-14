//
//  Boundary.swift
//  Boundaries
//
//  Created by Frank Valbuena on 7/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

/// A boundary is a model for handling the object graph construction of a group of objects.
/// Never use this protocol directly instead inherit from Boundary, Adapter, Container or RootBoundary
public protocol BoundaryProtocol {
     associatedtype Dependencies: BoundaryListProtocol
}

/// A boundary is a class and a protocol, it is meant to handling the object graph construction of a gruop of objects.
public typealias Boundary = AnyBoundary & BoundaryProtocol

/// An empty boundary having no inputs or external sources.
public struct Empty: BoundaryProtocol {
    public typealias Dependencies = BoundaryList
    static let empty = Empty()
}

/// Type erasure for boundary objects. This is the base class for any client extension. This base class
/// has a default associated type for dependencies. By default the dependencies list is empty.
open class AnyBoundary {
    /// Default Dependencies associatedtype for BoundaryProtocol.
    public typealias Dependencies = BoundaryList
    
    /// Internal use only struct. This can't be initialized publicly.
    public struct Internals {
        let data: Any
    }
    
    fileprivate let internals: Internals
    
    /// Required initializer for this class.
    public required init(internals: Internals) {
        self.internals = internals
    }
    
    /// Creates an input port based on the passed implementation. InputPorts make your properties
    /// Accessible to dependents of your boundaries. This method is the only way to create input ports
    /// The init of the InputPort is internal. This brings cohesion between ports and boundaries.
    public final func makeInputPort<Interface>(implementation: Interface) -> InputPort<Interface> {
        return InputPort(implementation: implementation)
    }
}

public extension BoundaryProtocol {
    /// Since Boundary inherits from AnyBoundary, this typealias disambiguate between the associated type
    /// and the default typealias defined in AnyBoundary.
    typealias SelfDependencies = Self.Dependencies
}

public extension BoundaryProtocol where Self: AnyBoundary {
    /// Resolved type for the Boundary. The instances of Boundary are never exposed to the client.
    /// Instead resolved wraps the boundary giving access to the input ports and protecting the rest
    /// of the internal code of the boundary from being used externally.
    typealias Resolved = Boundaries.Resolved<Self>
    
    
    /// This property brings via dynamic look-up all the input port properties of your dependencies.
    /// Use it for creating the boundary's objects injecting its dependencies.
    var dependencies: SelfDependencies {
        return internals.data as! SelfDependencies
    }
}

extension BoundaryProtocol where Self: AnyBoundary {
    init(dependencies: SelfDependencies) {
        self.init(internals: .init(data: dependencies))
    }
}
