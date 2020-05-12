//
//  Port.swift
//  Boundaries
//
//  Created by Frank Valbuena on 8/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

/// An input port is a struct for making a property visible for inbound dependencies of a boundary.
/// Only Boundary subclasses can create input ports.
public struct InputPort<Interface> {
    let implementation: Interface
}
