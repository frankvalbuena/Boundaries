//
//  Root.swift
//  Boundaries
//
//  Created by Frank Valbuena on 9/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

/// A RootBoundary is the root object of the Boundary Graph. Never use this protocol directly. Instead
/// inherit from RootBoundary.
public protocol RootBoundaryProtocol: ContainerBoundaryProtocol where Self.Dependencies == BoundaryList {
    
}

/// A RootBoundary is the root object of the Boundary Graph. A RootBoundary is a Container which can
/// be resolved directly without a Resolver. For building a root boundary you simply instantiate
/// RootBoundary.Resolved()
public typealias RootBoundary = Boundary & RootBoundaryProtocol
