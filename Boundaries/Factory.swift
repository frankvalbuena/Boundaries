//
//  Factory.swift
//  Boundaries
//
//  Created by Frank Valbuena on 10/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

/// A simple factory based on Swift Callable API. It takes a closure and creates a
/// callable struct that will invoke the closure. This allows you to create inline factories
/// in your Boundaries.
public struct Factory<Configuration, Interface> {
    private let construction: (Configuration) -> Interface
    
    public init(construction: @escaping (Configuration) -> Interface) {
        self.construction = construction
    }
    
    public func callAsFunction(configuration: Configuration) -> Interface {
        return construction(configuration)
    }
}
