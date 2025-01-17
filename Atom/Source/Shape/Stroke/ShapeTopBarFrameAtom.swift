//
//  SwiftUIView.swift
//  
//
//  Created by Francisco Romero on 16/01/25.
//

import SwiftUI
import RoVaAtomicSciFiCore

public struct ShapeTopBarFrameAtom : AtomShape {
    var size : CGFloat
    
    public init(size: CGFloat) {
        self.size = size
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let x1 = rect.minX
        let x2 = rect.minX + size
        let x3 = rect.maxX - size
        let x4 = rect.maxX
        
        let y1 = rect.minY
        let y2 = rect.maxY
        
        let pl1 = CGPoint(x: x2, y: y2)
        let pl2 = CGPoint(x: x1, y: y2)
        let pl3 = CGPoint(x: x1, y: y1)
        let pl4 = CGPoint(x: x2, y: y1)
 
        let pr1 = CGPoint(x: x3, y: y2)
        let pr2 = CGPoint(x: x4, y: y2)
        let pr3 = CGPoint(x: x4, y: y1)
        let pr4 = CGPoint(x: x3, y: y1)
        
        path.move   (to: pl1)
        path.addLine(to: pl2)
        path.addLine(to: pl3)
        path.addLine(to: pl4)
        
        path.move   (to: pr1)
        path.addLine(to: pr2)
        path.addLine(to: pr3)
        path.addLine(to: pr4)
        return path
    }
}
