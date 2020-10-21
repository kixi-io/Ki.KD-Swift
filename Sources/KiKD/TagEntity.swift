//
//  File.swift
//  
//
//  Created by Daniel LEUCK on 10/6/20.
//

import KiCore

open class TagEntity : CustomStringConvertible, Equatable /* : Comparable, Equatable, CustomStringConvertible */ {

    let nsid:NSID
    var values = [Any?]()
    var attributes = [NSID:Any?]()

    init(_ nsid: NSID) {
        self.nsid = nsid
    }
    
    convenience init(_ name: String, namespace: String = "") {
        self.init(NSID(name, namespace:namespace))
    }
    
    public var description: String {
        var text = nsid.description
        
        if values.isEmpty && attributes.isEmpty {
            return text
        }
        
        if !values.isEmpty {
            if !nsid.isAnonymous { text+=" " }
            
            text+=values.format(separator:" ", formatter: KD.formatter)
        }
        
        if !attributes.isEmpty {
            text+=" "
            text+=attributes.format(kvSeparator:"=", pairSeparator:" ", valueFormatter: KD.formatter, sorted:true)
        }
        
        return text
    }
    
    subscript(_ nsid:NSID) -> Any? {
        get {
            return attributes[nsid] as Any?
        }
        set(value) {
            attributes[nsid] = value
        }
    }
    
    subscript(_ name:String, namespace:String = "") -> Any? {
        get {
            return attributes[NSID(name, namespace:namespace)] as Any?
        }
        set(value) {
            attributes[NSID(name, namespace:namespace)] = value
        }
    }
    
    public static func == (lhs: TagEntity, rhs: TagEntity) -> Bool {
        return lhs.description == rhs.description
    }
}
