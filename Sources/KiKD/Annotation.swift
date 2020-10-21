//
//  File.swift
//  
//
//  Created by Daniel LEUCK on 10/6/20.
//

import Foundation

class Annotation : TagEntity {

    override init(_ nsid: NSID) {
        super.init(nsid)
    }
    
    init(_ name:String, namespace:String = "") {
        super.init(NSID(name, namespace:namespace))
    }
    
    override var description: String {
        return "@" + super.description
    }
}
