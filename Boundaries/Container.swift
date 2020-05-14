//
//  Container.swift
//  Boundaries
//
//  Created by Frank Valbuena on 7/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

/// Protocol for Container Boundaries. A container is simply a boundary that contains
/// other children boundaries. This gives makes the boundary composable. Never use this protocol directly
/// Instead inherit from ContainerBoundary.
public protocol ContainerBoundaryProtocol: Boundary {
    /// Subboundaries associated type. This must be definined using BoundaryList using this syntax:
    /// typealias Subboundaries = BoundaryList.Add<YOUR_SUBBOUNDARY_HERE>
    /// You can add up to 20 subboundaries. A container has the ability to build its children, using the
    /// Resolver API.
    associatedtype Subboundaries: BoundaryListProtocol
}

/// A ContainerBoundary is a class and a protocol, it is a subtype of Boundary. A container is simply a boundary that contains
/// other children boundaries. This gives makes the boundary composable.
public typealias ContainerBoundary = Boundary & ContainerBoundaryProtocol

public extension ContainerBoundaryProtocol where Subboundaries.Boundary1: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary1.Type) -> Resolver<Subboundaries.Boundary1> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary2: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary2.Type) -> Resolver<Subboundaries.Boundary2> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary3: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary3.Type) -> Resolver<Subboundaries.Boundary3> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary4: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary4.Type) -> Resolver<Subboundaries.Boundary4> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary5: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary5.Type) -> Resolver<Subboundaries.Boundary5> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary6: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary6.Type) -> Resolver<Subboundaries.Boundary6> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary7: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary7.Type) -> Resolver<Subboundaries.Boundary7> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary8: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary8.Type) -> Resolver<Subboundaries.Boundary8> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary9: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary9.Type) -> Resolver<Subboundaries.Boundary9> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary10: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary10.Type) -> Resolver<Subboundaries.Boundary10> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary11: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary11.Type) -> Resolver<Subboundaries.Boundary11> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary12: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary12.Type) -> Resolver<Subboundaries.Boundary12> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary13: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary13.Type) -> Resolver<Subboundaries.Boundary13> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary14: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary14.Type) -> Resolver<Subboundaries.Boundary14> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary15: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary15.Type) -> Resolver<Subboundaries.Boundary15> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary16: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary16.Type) -> Resolver<Subboundaries.Boundary16> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary17: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary17.Type) -> Resolver<Subboundaries.Boundary17> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary18: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary18.Type) -> Resolver<Subboundaries.Boundary18> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary19: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary19.Type) -> Resolver<Subboundaries.Boundary19> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary20: Boundary {
    /// Creates a resolver for the subboundary. The subboundary must be added on the Subboundaries typealias.
    func resolver(for: Subboundaries.Boundary20.Type) -> Resolver<Subboundaries.Boundary20> {
        return .init()
    }
}
