//
//  File.swift
//  
//
//  Created by Daniel LEUCK on 10/7/20.
//

import Foundation

open class KD {
    public static let formatter = KDFormatter()
    
    public static func read(_ code:String) throws -> Tag {
        var tags = try Interpreter().read(code)
        if tags.count == 0 { return Tag("root") }
        if tags.count == 1 { return tags[0] }
        
        var root = Tag("root")
        root.children.append(contentsOf:tags)
        return root
    }
}
