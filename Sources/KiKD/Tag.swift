//
//  File.swift
//  
//
//  Created by Daniel LEUCK on 10/6/20.
//

open class Tag : TagEntity /* : Comparable, Equatable, CustomStringConvertible */ {
    var annotations = [Annotation]()
    var children = [Tag]()
    
    override init(_ nsid: NSID) {
        super.init(nsid)
    }
    
    init(_ name:String, namespace:String = "") {
        super.init(NSID(name, namespace:namespace))
    }
    
    public override var description: String {
        return format()
    }
    
    func format(prefix:String = "") -> String {
        var text = ""
        
        if(!annotations.isEmpty) {
            for anno in annotations {
                text += (prefix + (anno.description + "\n"))
            }
        }
        
        if !nsid.isAnonymous {
            text += (prefix + super.description)
        }
            
        if(!children.isEmpty) {
            text += " {\n"
            
            for child in children {
                text += (child.format(prefix:(prefix + "    ")) + "\n")
            }
            
            text += (prefix + "}")
        }
        
        return text
    }
}
