//
//  Resolver.swift
//  Boundaries
//
//  Created by Frank Valbuena on 8/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

@dynamicMemberLookup
public struct Resolved<Boundary: BoundaryProtocol> {
    let boundary: Boundary
    
    init(boundary: Boundary) {
        self.boundary = boundary
    }
    
    public subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary, InputPort<T>>) -> T {
        return boundary[keyPath: dynamicMember].implementation
    }
}

public extension Resolved where Boundary: RootBoundaryProtocol {
    init() {
        self = Resolver<Boundary>().resolved()
    }
}

public typealias Resolver<Boundary: Boundaries.Boundary> = ResolverStack<Boundary, BoundaryList>

public struct ResolverStack<Boundary: Boundaries.Boundary, Current: BoundaryListProtocol> {
    public typealias Target = Boundary.Dependencies
    public typealias `Self` = ResolverStack<Boundary, Current>
    
    let current: Current
}

extension ResolverStack where Current == BoundaryList {
    init() {
        self.init(current: .empty)
    }
}

// MARK: - Dependencies Resolving

public extension ResolverStack where Target.Boundary1: Boundaries.Boundary, Current.Boundary1 == Empty {
    typealias NextAfterDependency1 = ResolverStack<Boundary, Current.Replace1<Target.Boundary1>>
    
    func resolve(dependency: Resolved<Target.Boundary1>) -> NextAfterDependency1 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary2: Boundaries.Boundary, Current.Boundary2 == Empty {
    typealias NextAfterDependency2 = ResolverStack<Boundary, Current.Replace2<Target.Boundary2>>
    
    func resolve(dependency: Resolved<Target.Boundary2>) -> NextAfterDependency2 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary3: Boundaries.Boundary, Current.Boundary3 == Empty {
    typealias NextAfterDependency3 = ResolverStack<Boundary, Current.Replace3<Target.Boundary3>>
    
    func resolve(dependency: Resolved<Target.Boundary3>) -> NextAfterDependency3 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary4: Boundaries.Boundary, Current.Boundary4 == Empty {
    typealias NextAfterDependency4 = ResolverStack<Boundary, Current.Replace4<Target.Boundary4>>
    
    func resolve(dependency: Resolved<Target.Boundary4>) -> NextAfterDependency4 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary5: Boundaries.Boundary, Current.Boundary5 == Empty {
    typealias NextAfterDependency5 = ResolverStack<Boundary, Current.Replace5<Target.Boundary5>>
    
    func resolve(dependency: Resolved<Target.Boundary5>) -> NextAfterDependency5 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary6: Boundaries.Boundary, Current.Boundary6 == Empty {
    typealias NextAfterDependency6 = ResolverStack<Boundary, Current.Replace6<Target.Boundary6>>
    
    func resolve(dependency: Resolved<Target.Boundary6>) -> NextAfterDependency6 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary7: Boundaries.Boundary, Current.Boundary7 == Empty {
    typealias NextAfterDependency7 = ResolverStack<Boundary, Current.Replace7<Target.Boundary7>>
    
    func resolve(dependency: Resolved<Target.Boundary7>) -> NextAfterDependency7 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary8: Boundaries.Boundary, Current.Boundary8 == Empty {
    typealias NextAfterDependency8 = ResolverStack<Boundary, Current.Replace8<Target.Boundary8>>
    
    func resolve(dependency: Resolved<Target.Boundary8>) -> NextAfterDependency8 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary9: Boundaries.Boundary, Current.Boundary9 == Empty {
    typealias NextAfterDependency9 = ResolverStack<Boundary, Current.Replace9<Target.Boundary9>>
    
    func resolve(dependency: Resolved<Target.Boundary9>) -> NextAfterDependency9 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary10: Boundaries.Boundary, Current.Boundary10 == Empty {
    typealias NextAfterDependency10 = ResolverStack<Boundary, Current.Replace10<Target.Boundary10>>
    
    func resolve(dependency: Resolved<Target.Boundary10>) -> NextAfterDependency10 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary11: Boundaries.Boundary, Current.Boundary11 == Empty {
    typealias NextAfterDependency11 = ResolverStack<Boundary, Current.Replace11<Target.Boundary11>>
    
    func resolve(dependency: Resolved<Target.Boundary11>) -> NextAfterDependency11 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary12: Boundaries.Boundary, Current.Boundary12 == Empty {
    typealias NextAfterDependency12 = ResolverStack<Boundary, Current.Replace12<Target.Boundary12>>
    
    func resolve(dependency: Resolved<Target.Boundary12>) -> NextAfterDependency12 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary13: Boundaries.Boundary, Current.Boundary13 == Empty {
    typealias NextAfterDependency13 = ResolverStack<Boundary, Current.Replace13<Target.Boundary13>>
    
    func resolve(dependency: Resolved<Target.Boundary13>) -> NextAfterDependency13 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary14: Boundaries.Boundary, Current.Boundary14 == Empty {
    typealias NextAfterDependency14 = ResolverStack<Boundary, Current.Replace14<Target.Boundary14>>
    
    func resolve(dependency: Resolved<Target.Boundary14>) -> NextAfterDependency14 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary15: Boundaries.Boundary, Current.Boundary15 == Empty {
    typealias NextAfterDependency15 = ResolverStack<Boundary, Current.Replace15<Target.Boundary15>>
    
    func resolve(dependency: Resolved<Target.Boundary15>) -> NextAfterDependency15 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary16: Boundaries.Boundary, Current.Boundary16 == Empty {
    typealias NextAfterDependency16 = ResolverStack<Boundary, Current.Replace16<Target.Boundary16>>
    
    func resolve(dependency: Resolved<Target.Boundary16>) -> NextAfterDependency16 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary17: Boundaries.Boundary, Current.Boundary17 == Empty {
    typealias NextAfterDependency17 = ResolverStack<Boundary, Current.Replace17<Target.Boundary17>>
    
    func resolve(dependency: Resolved<Target.Boundary17>) -> NextAfterDependency17 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary18: Boundaries.Boundary, Current.Boundary18 == Empty {
    typealias NextAfterDependency18 = ResolverStack<Boundary, Current.Replace18<Target.Boundary18>>
    
    func resolve(dependency: Resolved<Target.Boundary18>) -> NextAfterDependency18 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary19: Boundaries.Boundary, Current.Boundary19 == Empty {
    typealias NextAfterDependency19 = ResolverStack<Boundary, Current.Replace19<Target.Boundary19>>
    
    func resolve(dependency: Resolved<Target.Boundary19>) -> NextAfterDependency19 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

public extension ResolverStack where Target.Boundary20: Boundaries.Boundary, Current.Boundary20 == Empty {
    typealias NextAfterDependency20 = ResolverStack<Boundary, Current.Replace20<Target.Boundary20>>
    
    func resolve(dependency: Resolved<Target.Boundary20>) -> NextAfterDependency20 {
        return .init(current: current.replacing(dependency.boundary))
    }
}

// MARK: - Plugins Resolving

public extension ResolverStack where Target.Boundary1: PluginBoundary, Current.Boundary1 == Empty {
    typealias NextAfterPlugin1 = ResolverStack<Boundary, Current.Replace1<Target.Boundary1>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin1
        where Adapter.PluginAdaptee == Target.Boundary1
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary2: PluginBoundary, Current.Boundary2 == Empty {
    typealias NextAfterPlugin2 = ResolverStack<Boundary, Current.Replace2<Target.Boundary2>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin2
        where Adapter.PluginAdaptee == Target.Boundary2
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary3: PluginBoundary, Current.Boundary3 == Empty {
    typealias NextAfterPlugin3 = ResolverStack<Boundary, Current.Replace3<Target.Boundary3>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin3
        where Adapter.PluginAdaptee == Target.Boundary3
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary4: PluginBoundary, Current.Boundary4 == Empty {
    typealias NextAfterPlugin4 = ResolverStack<Boundary, Current.Replace4<Target.Boundary4>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin4
        where Adapter.PluginAdaptee == Target.Boundary4
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary5: PluginBoundary, Current.Boundary5 == Empty {
    typealias NextAfterPlugin5 = ResolverStack<Boundary, Current.Replace5<Target.Boundary5>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin5
        where Adapter.PluginAdaptee == Target.Boundary5
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary6: PluginBoundary, Current.Boundary6 == Empty {
    typealias NextAfterPlugin6 = ResolverStack<Boundary, Current.Replace6<Target.Boundary6>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin6
        where Adapter.PluginAdaptee == Target.Boundary6
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary7: PluginBoundary, Current.Boundary7 == Empty {
    typealias NextAfterPlugin7 = ResolverStack<Boundary, Current.Replace7<Target.Boundary7>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin7
        where Adapter.PluginAdaptee == Target.Boundary7
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary8: PluginBoundary, Current.Boundary8 == Empty {
    typealias NextAfterPlugin8 = ResolverStack<Boundary, Current.Replace8<Target.Boundary8>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin8
        where Adapter.PluginAdaptee == Target.Boundary8
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary9: PluginBoundary, Current.Boundary9 == Empty {
    typealias NextAfterPlugin9 = ResolverStack<Boundary, Current.Replace9<Target.Boundary9>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin9
        where Adapter.PluginAdaptee == Target.Boundary9
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary10: PluginBoundary, Current.Boundary10 == Empty {
    typealias NextAfterPlugin10 = ResolverStack<Boundary, Current.Replace10<Target.Boundary10>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin10
        where Adapter.PluginAdaptee == Target.Boundary10
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary11: PluginBoundary, Current.Boundary11 == Empty {
    typealias NextAfterPlugin11 = ResolverStack<Boundary, Current.Replace11<Target.Boundary11>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin11
        where Adapter.PluginAdaptee == Target.Boundary11
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary12: PluginBoundary, Current.Boundary12 == Empty {
    typealias NextAfterPlugin12 = ResolverStack<Boundary, Current.Replace12<Target.Boundary12>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin12
        where Adapter.PluginAdaptee == Target.Boundary12
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary13: PluginBoundary, Current.Boundary13 == Empty {
    typealias NextAfterPlugin13 = ResolverStack<Boundary, Current.Replace13<Target.Boundary13>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin13
        where Adapter.PluginAdaptee == Target.Boundary13
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary14: PluginBoundary, Current.Boundary14 == Empty {
    typealias NextAfterPlugin14 = ResolverStack<Boundary, Current.Replace14<Target.Boundary14>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin14
        where Adapter.PluginAdaptee == Target.Boundary14
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary15: PluginBoundary, Current.Boundary15 == Empty {
    typealias NextAfterPlugin15 = ResolverStack<Boundary, Current.Replace15<Target.Boundary15>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin15
        where Adapter.PluginAdaptee == Target.Boundary15
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary16: PluginBoundary, Current.Boundary16 == Empty {
    typealias NextAfterPlugin16 = ResolverStack<Boundary, Current.Replace16<Target.Boundary16>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin16
        where Adapter.PluginAdaptee == Target.Boundary16
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary17: PluginBoundary, Current.Boundary17 == Empty {
    typealias NextAfterPlugin17 = ResolverStack<Boundary, Current.Replace17<Target.Boundary17>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin17
        where Adapter.PluginAdaptee == Target.Boundary17
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary18: PluginBoundary, Current.Boundary18 == Empty {
    typealias NextAfterPlugin18 = ResolverStack<Boundary, Current.Replace18<Target.Boundary18>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin18
        where Adapter.PluginAdaptee == Target.Boundary18
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary19: PluginBoundary, Current.Boundary19 == Empty {
    typealias NextAfterPlugin19 = ResolverStack<Boundary, Current.Replace19<Target.Boundary19>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin19
        where Adapter.PluginAdaptee == Target.Boundary19
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

public extension ResolverStack where Target.Boundary20: PluginBoundary, Current.Boundary20 == Empty {
    typealias NextAfterPlugin20 = ResolverStack<Boundary, Current.Replace20<Target.Boundary20>>
    
    func resolve<Adapter: AdapterBoundaryProtocol>(plugin: Resolved<Adapter>) -> NextAfterPlugin20
        where Adapter.PluginAdaptee == Target.Boundary20
    {
        return .init(current: current.replacing(plugin.boundary.makePlugin()))
    }
}

// MARK: - Final

public extension ResolverStack where Boundary.Dependencies == Current {
    func resolved() -> Resolved<Boundary> {
        return .init(boundary: .init(dependencies: current))
    }
}
