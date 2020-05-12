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

/// Type erasure for boundary objects. This is the base class for any client extension.
open class AnyBoundary {
    public typealias Dependencies = BoundaryList
    public struct Internals {
        let data: Any
    }
    
    fileprivate let internals: Internals
    
    public required init(internals: Internals) {
        self.internals = internals
    }
    
    /// Creates an input port based on the passed implementation. InputPorts make your properties
    /// Accessible to dependents of your boundaries.
    public final func makeInputPort<Interface>(implementation: Interface) -> InputPort<Interface> {
        return InputPort(implementation: implementation)
    }
}

public extension BoundaryProtocol {
    typealias SelfDependencies = Self.Dependencies
}

public extension BoundaryProtocol where Self: AnyBoundary {
    typealias Resolved = Boundaries.Resolved<Self>
    
    var dependencies: SelfDependencies {
        return internals.data as! SelfDependencies
    }
}

extension BoundaryProtocol where Self: AnyBoundary {
    init(dependencies: SelfDependencies) {
        self.init(internals: .init(data: dependencies))
    }
}
