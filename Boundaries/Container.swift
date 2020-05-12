//
//  Container.swift
//  Boundaries
//
//  Created by Frank Valbuena on 7/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

public protocol ContainerBoundaryProtocol: Boundary {
    associatedtype Subboundaries: BoundaryListProtocol
}

public typealias ContainerBoundary = Boundary & ContainerBoundaryProtocol

public extension ContainerBoundaryProtocol where Subboundaries.Boundary1: Boundary {
    func resolver(for: Subboundaries.Boundary1.Type) -> Resolver<Subboundaries.Boundary1> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary2: Boundary {
    func resolver(for: Subboundaries.Boundary2.Type) -> Resolver<Subboundaries.Boundary2> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary3: Boundary {
    func resolver(for: Subboundaries.Boundary3.Type) -> Resolver<Subboundaries.Boundary3> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary4: Boundary {
    func resolver(for: Subboundaries.Boundary4.Type) -> Resolver<Subboundaries.Boundary4> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary5: Boundary {
    func resolver(for: Subboundaries.Boundary5.Type) -> Resolver<Subboundaries.Boundary5> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary6: Boundary {
    func resolver(for: Subboundaries.Boundary6.Type) -> Resolver<Subboundaries.Boundary6> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary7: Boundary {
    func resolver(for: Subboundaries.Boundary7.Type) -> Resolver<Subboundaries.Boundary7> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary8: Boundary {
    func resolver(for: Subboundaries.Boundary8.Type) -> Resolver<Subboundaries.Boundary8> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary9: Boundary {
    func resolver(for: Subboundaries.Boundary9.Type) -> Resolver<Subboundaries.Boundary9> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary10: Boundary {
    func resolver(for: Subboundaries.Boundary10.Type) -> Resolver<Subboundaries.Boundary10> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary11: Boundary {
    func resolver(for: Subboundaries.Boundary11.Type) -> Resolver<Subboundaries.Boundary11> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary12: Boundary {
    func resolver(for: Subboundaries.Boundary12.Type) -> Resolver<Subboundaries.Boundary12> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary13: Boundary {
    func resolver(for: Subboundaries.Boundary13.Type) -> Resolver<Subboundaries.Boundary13> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary14: Boundary {
    func resolver(for: Subboundaries.Boundary14.Type) -> Resolver<Subboundaries.Boundary14> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary15: Boundary {
    func resolver(for: Subboundaries.Boundary15.Type) -> Resolver<Subboundaries.Boundary15> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary16: Boundary {
    func resolver(for: Subboundaries.Boundary16.Type) -> Resolver<Subboundaries.Boundary16> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary17: Boundary {
    func resolver(for: Subboundaries.Boundary17.Type) -> Resolver<Subboundaries.Boundary17> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary18: Boundary {
    func resolver(for: Subboundaries.Boundary18.Type) -> Resolver<Subboundaries.Boundary18> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary19: Boundary {
    func resolver(for: Subboundaries.Boundary19.Type) -> Resolver<Subboundaries.Boundary19> {
        return .init()
    }
}

public extension ContainerBoundaryProtocol where Subboundaries.Boundary20: Boundary {
    func resolver(for: Subboundaries.Boundary20.Type) -> Resolver<Subboundaries.Boundary20> {
        return .init()
    }
}
