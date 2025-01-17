//
//  SwiftUIView.swift
//  
//
//  Created by Francisco Romero on 16/01/25.
//

import SwiftUI
import RoVaAtomicSciFiCore

public struct ShapeBottomBarFrameAtom : AtomShape {
    
    init () {
        
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let p1 = CGPoint(x: rect.minX, y: rect.minY)
        let p2 = CGPoint(x: rect.maxX, y: rect.minY)
        
        path.move(to: p1)
        path.addLine(to: p2)
        
        return path
    }
}
