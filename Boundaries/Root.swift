//
//  Root.swift
//  Boundaries
//
//  Created by Frank Valbuena on 9/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

public protocol RootBoundaryProtocol: ContainerBoundaryProtocol where Self.Dependencies == BoundaryList {
    
}

public typealias RootBoundary = Boundary & RootBoundaryProtocol
