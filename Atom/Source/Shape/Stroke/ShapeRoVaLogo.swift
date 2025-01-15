//
//  ShapeRoVaLogo.swift
//
//
//  Created by Francisco Romero on 15/01/25.
//

import SwiftUI
import RoVaAtomicSciFiCore

struct ShapeRoVaLogo : AtomShape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let w = rect.maxX / 8
        let x0 = w * 0
        let x1 = w * 1
        let x4 = w * 4
        let x5 = w * 5
        let x6 = w * 6
        let x7 = w * 7
        let x8 = w * 8
                
        let h = rect.maxY / 10
        let y0 = h * 0
        let y1 = h * 1
        let y2 = h * 2
        let y3 = h * 3
        let y4 = h * 4
        let y5 = h * 5
        let y7 = h * 7
        let y9 = h * 9
        let y10 = h * 10
        
        let c1 = CGPoint(x: x0, y: y10)
        let c2 = CGPoint(x: x0, y: y0)
        let c3 = CGPoint(x: x8, y: y0)
        let c4 = CGPoint(x: x8, y: y10)
        
        path.move(to: c1)
        path.addLine(to: c2)
        path.addLine(to: c3)
        path.addLine(to: c4)
        path.addLine(to: c1)
        
        let p1 = CGPoint(x: x1, y: y9)
        let p2 = CGPoint(x: x1, y: y1)
        let p3 = CGPoint(x: x4, y: y3)
        let p4 = CGPoint(x: x1, y: y5)
        let p5 = CGPoint(x: x4, y: y9)
        let p6 = CGPoint(x: x7, y: y5)
        let p7 = CGPoint(x: x4, y: y5)
        let p8 = CGPoint(x: x4, y: y1)
        let p9 = CGPoint(x: x7, y: y1)
        let p10 = CGPoint(x: x7, y: y9)
        
        path.move(to: p1)
        path.addLine(to: p2)
        path.addLine(to: p3)
        path.addLine(to: p4)
        path.addLine(to: p5)
        path.addLine(to: p6)
        path.addLine(to: p7)
        path.addLine(to: p8)
        path.addLine(to: p9)
        path.addLine(to: p10)
        
        let t1 = CGPoint(x: x5, y: y2)
        let t2 = CGPoint(x: x6, y: y2)
        let t3 = CGPoint(x: x5, y: y3)
        let t4 = CGPoint(x: x6, y: y3)
        let t5 = CGPoint(x: x5, y: y4)
        let t6 = CGPoint(x: x6, y: y4)
        path.move(to: t1)
        path.addLine(to: t2)
        path.move(to: t3)
        path.addLine(to: t4)
        path.move(to: t5)
        path.addLine(to: t6)
        
        let n1 = CGPoint(x: x5, y: y7)
        let n2 = CGPoint(x: x7, y: y7)
        path.move(to: n1)
        path.addLine(to: n2)
        
        return path
    }
}
