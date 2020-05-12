//
//  BoundaryList.swift
//  Boundaries
//
//  Created by Frank Valbuena on 8/05/20.
//  Copyright © 2020 Frank Valbuena. All rights reserved.
//

import Foundation

public protocol BoundaryListProtocol {
    associatedtype Boundary1: BoundaryProtocol
    associatedtype Boundary2: BoundaryProtocol
    associatedtype Boundary3: BoundaryProtocol
    associatedtype Boundary4: BoundaryProtocol
    associatedtype Boundary5: BoundaryProtocol
    associatedtype Boundary6: BoundaryProtocol
    associatedtype Boundary7: BoundaryProtocol
    associatedtype Boundary8: BoundaryProtocol
    associatedtype Boundary9: BoundaryProtocol
    associatedtype Boundary10: BoundaryProtocol
    associatedtype Boundary11: BoundaryProtocol
    associatedtype Boundary12: BoundaryProtocol
    associatedtype Boundary13: BoundaryProtocol
    associatedtype Boundary14: BoundaryProtocol
    associatedtype Boundary15: BoundaryProtocol
    associatedtype Boundary16: BoundaryProtocol
    associatedtype Boundary17: BoundaryProtocol
    associatedtype Boundary18: BoundaryProtocol
    associatedtype Boundary19: BoundaryProtocol
    associatedtype Boundary20: BoundaryProtocol
    
    var boundary1: Boundary1 { get }
    var boundary2: Boundary2 { get }
    var boundary3: Boundary3 { get }
    var boundary4: Boundary4 { get }
    var boundary5: Boundary5 { get }
    var boundary6: Boundary6 { get }
    var boundary7: Boundary7 { get }
    var boundary8: Boundary8 { get }
    var boundary9: Boundary9 { get }
    var boundary10: Boundary10 { get }
    var boundary11: Boundary11 { get }
    var boundary12: Boundary12 { get }
    var boundary13: Boundary13 { get }
    var boundary14: Boundary14 { get }
    var boundary15: Boundary15 { get }
    var boundary16: Boundary16 { get }
    var boundary17: Boundary17 { get }
    var boundary18: Boundary18 { get }
    var boundary19: Boundary19 { get }
    var boundary20: Boundary20 { get }
}
public typealias BoundaryList = AnyBoundaryList<
    Empty, Empty, Empty, Empty, Empty,
    Empty, Empty, Empty, Empty, Empty,
    Empty, Empty, Empty, Empty, Empty,
    Empty, Empty, Empty, Empty, Empty
>

@dynamicMemberLookup
public struct AnyBoundaryList<
    Boundary1: BoundaryProtocol, Boundary2: BoundaryProtocol, Boundary3: BoundaryProtocol, Boundary4: BoundaryProtocol, Boundary5: BoundaryProtocol,
    Boundary6: BoundaryProtocol, Boundary7: BoundaryProtocol, Boundary8: BoundaryProtocol, Boundary9: BoundaryProtocol, Boundary10: BoundaryProtocol,
    Boundary11: BoundaryProtocol, Boundary12: BoundaryProtocol, Boundary13: BoundaryProtocol, Boundary14: BoundaryProtocol, Boundary15: BoundaryProtocol,
    Boundary16: BoundaryProtocol, Boundary17: BoundaryProtocol, Boundary18: BoundaryProtocol, Boundary19: BoundaryProtocol, Boundary20: BoundaryProtocol
    >: BoundaryListProtocol
{
    public typealias LastDependency = Boundary5
    
    public let boundary1: Boundary1
    public let boundary2: Boundary2
    public let boundary3: Boundary3
    public let boundary4: Boundary4
    public let boundary5: Boundary5
    public let boundary6: Boundary6
    public let boundary7: Boundary7
    public let boundary8: Boundary8
    public let boundary9: Boundary9
    public let boundary10: Boundary10
    public let boundary11: Boundary11
    public let boundary12: Boundary12
    public let boundary13: Boundary13
    public let boundary14: Boundary14
    public let boundary15: Boundary15
    public let boundary16: Boundary16
    public let boundary17: Boundary17
    public let boundary18: Boundary18
    public let boundary19: Boundary19
    public let boundary20: Boundary20
}

public extension AnyBoundaryList where LastDependency == Empty {
    typealias Add<Boundary: BoundaryProtocol> = AnyBoundaryList<
        Boundary, Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19
    >
}

public extension AnyBoundaryList {
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary1, InputPort<T>>) -> T {
        return boundary1[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary2, InputPort<T>>) -> T {
        return boundary2[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary3, InputPort<T>>) -> T {
        return boundary3[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary4, InputPort<T>>) -> T {
        return boundary4[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary5, InputPort<T>>) -> T {
        return boundary5[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary6, InputPort<T>>) -> T {
        return boundary6[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary7, InputPort<T>>) -> T {
        return boundary7[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary8, InputPort<T>>) -> T {
        return boundary8[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary9, InputPort<T>>) -> T {
        return boundary9[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary10, InputPort<T>>) -> T {
        return boundary10[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary11, InputPort<T>>) -> T {
        return boundary11[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary12, InputPort<T>>) -> T {
        return boundary12[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary13, InputPort<T>>) -> T {
        return boundary13[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary14, InputPort<T>>) -> T {
        return boundary14[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary15, InputPort<T>>) -> T {
        return boundary15[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary16, InputPort<T>>) -> T {
        return boundary16[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary17, InputPort<T>>) -> T {
        return boundary17[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary18, InputPort<T>>) -> T {
        return boundary18[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary19, InputPort<T>>) -> T {
        return boundary19[keyPath: dynamicMember].implementation
    }
    
    subscript<T>(dynamicMember dynamicMember: KeyPath<Boundary20, InputPort<T>>) -> T {
        return boundary20[keyPath: dynamicMember].implementation
    }
}

public extension BoundaryListProtocol {
    typealias Replace1<Boundary1: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace2<Boundary2: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace3<Boundary3: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace4<Boundary4: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace5<Boundary5: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace6<Boundary6: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace7<Boundary7: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace8<Boundary8: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace9<Boundary9: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace10<Boundary10: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace11<Boundary11: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace12<Boundary12: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace13<Boundary13: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace14<Boundary14: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace15<Boundary15: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace16<Boundary16: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace17<Boundary17: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace18<Boundary18: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace19<Boundary19: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
    typealias Replace20<Boundary20: BoundaryProtocol> = AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
    >
}

extension AnyBoundaryList where
    Boundary1 == Empty, Boundary2 == Empty, Boundary3 == Empty, Boundary4 == Empty, Boundary5 == Empty,
    Boundary6 == Empty, Boundary7 == Empty, Boundary8 == Empty, Boundary9 == Empty, Boundary10 == Empty,
    Boundary11 == Empty, Boundary12 == Empty, Boundary13 == Empty, Boundary14 == Empty, Boundary15 == Empty,
    Boundary16 == Empty, Boundary17 == Empty, Boundary18 == Empty, Boundary19 == Empty, Boundary20 == Empty
{
    static let empty = Self.init(boundary1: .empty, boundary2: .empty, boundary3: .empty, boundary4: .empty, boundary5: .empty,
                                 boundary6: .empty, boundary7: .empty, boundary8: .empty, boundary9: .empty, boundary10: .empty,
                                 boundary11: .empty, boundary12: .empty, boundary13: .empty, boundary14: .empty, boundary15: .empty,
                                 boundary16: .empty, boundary17: .empty, boundary18: .empty, boundary19: .empty, boundary20: .empty)
}

extension BoundaryListProtocol {
    func replacing<Boundary1: BoundaryProtocol>(_ boundary1: Boundary1)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary2: BoundaryProtocol>(_ boundary2: Boundary2)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary3: BoundaryProtocol>(_ boundary3: Boundary3)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary4: BoundaryProtocol>(_ boundary4: Boundary4)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary5: BoundaryProtocol>(_ boundary5: Boundary5)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary6: BoundaryProtocol>(_ boundary6: Boundary6)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary7: BoundaryProtocol>(_ boundary7: Boundary7)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary8: BoundaryProtocol>(_ boundary8: Boundary8)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary9: BoundaryProtocol>(_ boundary9: Boundary9)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary10: BoundaryProtocol>(_ boundary10: Boundary10)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary11: BoundaryProtocol>(_ boundary11: Boundary11)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary12: BoundaryProtocol>(_ boundary12: Boundary12)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary13: BoundaryProtocol>(_ boundary13: Boundary13)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary14: BoundaryProtocol>(_ boundary14: Boundary14)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary15: BoundaryProtocol>(_ boundary15: Boundary15)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary16: BoundaryProtocol>(_ boundary16: Boundary16)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary17: BoundaryProtocol>(_ boundary17: Boundary17)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary18: BoundaryProtocol>(_ boundary18: Boundary18)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary19: BoundaryProtocol>(_ boundary19: Boundary19)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
    
    func replacing<Boundary20: BoundaryProtocol>(_ boundary20: Boundary20)
        -> AnyBoundaryList<
        Boundary1, Boundary2, Boundary3, Boundary4, Boundary5, Boundary6, Boundary7, Boundary8, Boundary9, Boundary10,
        Boundary11, Boundary12, Boundary13, Boundary14, Boundary15, Boundary16, Boundary17, Boundary18, Boundary19, Boundary20
        >
    {
        return .init(boundary1: boundary1, boundary2: boundary2, boundary3: boundary3, boundary4: boundary4, boundary5: boundary5,
                     boundary6: boundary6, boundary7: boundary7, boundary8: boundary8, boundary9: boundary9, boundary10: boundary10,
                     boundary11: boundary11, boundary12: boundary12, boundary13: boundary13, boundary14: boundary14, boundary15: boundary15,
                     boundary16: boundary16, boundary17: boundary17, boundary18: boundary18, boundary19: boundary19, boundary20: boundary20)
    }
}
