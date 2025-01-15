//
//  FloatExtension.swift
//
//
//  Created by Francisco Romero on 10/01/25.
//

import SwiftUI

public extension CGFloat {
    
    static let goldenRation = CGFloat(1.618)
    
    static func rA(_ angle: CGFloat = 45) -> CGFloat {
        CGFloat.random(in: (-angle)...(angle))
    }
    
    var goldenDown : CGFloat {
        self / Self.goldenRation
    }
    
    var goldenUp : CGFloat {
        self * Self.goldenRation
    }
    

}
