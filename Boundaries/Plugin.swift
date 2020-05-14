//
//  Plugin.swift
//  Boundaries
//
//  Created by Frank Valbuena on 8/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

/// A boundary protocol for a plugin. A plugin is an abstract boundary, defining input ports.
/// Use Structs conforming to this protocol for defining your Plugins. For implementing a plugin
/// Use AdapterBoundary
public protocol PluginBoundary: BoundaryProtocol where Dependencies == BoundaryList {
}

/// Protocol for plugin Adapters. Adapters build implementations for plugins.
public protocol AdapterBoundaryProtocol: Boundary {
    /// Associated type for the adaptee plugin.
    associatedtype PluginAdaptee: Boundaries.PluginBoundary
    
    /// Function meant to build the plugin struct.
    func makePlugin() -> PluginAdaptee
}

/// An AdapterBoundary is a class and a protocol, it is a subtype of Boundary.
/// An Adapter is a boundary implementing a plugin.
public typealias AdapterBoundary = AdapterBoundaryProtocol & Boundary
