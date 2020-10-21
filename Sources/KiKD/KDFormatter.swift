//
//  File.swift
//  
//
//  Created by Daniel LEUCK on 10/7/20.
//

import Foundation

public class KDFormatter : Formatter {
    
    public override func string(for: Any?) -> String? {
        switch `for` {
            case is String: return "\"\(`for` as! String)\""
            case is Bool: return "\(`for` as! Bool)"
            case is CustomStringConvertible: return "\((`for` as! CustomStringConvertible).description)"
            default: return "\(String(describing: `for` ?? "nil")))"
        }
    }
}
