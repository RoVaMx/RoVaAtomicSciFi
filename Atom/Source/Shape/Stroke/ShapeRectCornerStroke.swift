//
//  ShapeRectCornerStroke.swift
//  
//
//  Created by Francisco Romero on 08/01/25.
//

import SwiftUI
import RoVaAtomicSciFiCore

public struct ShapeRectCornerStroke: AtomShape {
    public var cornerSize: CGFloat
    
    public var animatableData: CGFloat {
        get {cornerSize}
        set {cornerSize = newValue}
    }
    
    public init(cornerSize: CGFloat) {
        self.cornerSize = cornerSize
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRectCornersStroke(cornerSize, in: rect)
        return path
    }
}
