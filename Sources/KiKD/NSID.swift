//
//  File.swift
//  
//
//  Created by Daniel LEUCK on 10/6/20.
//

public struct NSID : Comparable, Equatable, CustomStringConvertible, Hashable {

    static let ANONYMOUS = NSID("", namespace:"")
    
    let name:String, namespace:String
    
    init(_ name:String, namespace:String = "") {
        self.name = name
        self.namespace = namespace
    }
    
    var isAnonymous: Bool { self == NSID.ANONYMOUS }
    
    public var description: String { namespace=="" ? name : "\(namespace):\(name)" }
    
    public static func == (lhs: NSID, rhs: NSID) -> Bool { return lhs.description == rhs.description }
    
    public static func < (lhs: NSID, rhs: NSID) -> Bool { return lhs.description < rhs.description }
}
