//
//  Plugin.swift
//  Boundaries
//
//  Created by Frank Valbuena on 8/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

/// A boundary protocol for a plugin. Use Structs conforming to this protocolo for defining your
/// Plugins.
public protocol PluginBoundary: BoundaryProtocol where Dependencies == BoundaryList {
}

public protocol AdapterBoundaryProtocol: Boundary {
    associatedtype PluginAdaptee: Boundaries.PluginBoundary
    
    func makePlugin() -> PluginAdaptee
}

public typealias AdapterBoundary = AdapterBoundaryProtocol & Boundary
