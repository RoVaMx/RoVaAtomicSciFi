//
//  ShapeGridStroke.swift
//
//
//  Created by Francisco Romero on 09/01/25.
//

import SwiftUI
import RoVaAtomicSciFiCore

public struct ShapeGridStroke: AtomShape {
    public var rows: Int
    public var colums: Int
    
    public init(rows: Int, colums: Int) {
        self.rows = rows
        self.colums = colums
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        
        if rows >  1 {
            let rowH =  rect.height / CGFloat(rows)
            for  r in 1..<rows {
                let y1 = CGFloat(r) * rowH
                let p1 = CGPoint(x: rect.minX, y: y1)
                let p2 = CGPoint(x: rect.maxX, y: y1)
                path.move(to: p1)
                path.addLine(to: p2)
            }
        }
        if colums >  1 {
            let columH =  rect.width / CGFloat(colums)
            for  c in 1..<colums {
                let x1 = CGFloat(c) * columH
                let p1 = CGPoint(x: x1, y: rect.minY)
                let p2 = CGPoint(x: x1, y: rect.maxY)
                path.move(to: p1)
                path.addLine(to: p2)
            }
        }
        
        return path
    }
}

