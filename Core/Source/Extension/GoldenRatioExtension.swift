//
//  GoldenRatioExtension.swift
//
//
//  Created by Francisco Romero on 08/01/25.
//

import SwiftUI


package extension TimeInterval {
    private static let GOLDEN : Double = 1.618
    var goldenUp : Double {
        self * Self.GOLDEN
    }
    
    var goldenDown : Double {
        self / Self.GOLDEN
    }
    
}
