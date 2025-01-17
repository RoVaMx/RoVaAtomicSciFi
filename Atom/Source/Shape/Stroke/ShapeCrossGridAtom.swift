//
//  ShapeCrossGridAtom.swift
//
//
//  Created by Francisco Romero on 16/01/25.
//

import SwiftUI
import RoVaAtomicSciFiCore

public struct ShapeCrossGridAtom : AtomShape {
    
    var rows : Int
    var columns : Int
    var size: CGFloat
    
    public init(rows: Int, columns: Int, size: CGFloat) {
        self.rows = rows
        self.columns = columns
        self.size = size
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let w = rect.maxX / CGFloat(columns)
        let h = rect.maxY / CGFloat(rows)
        
        for c in 0...columns {
            for r in 0...rows {
                path.addCross(
                    at: CGPoint(
                        x: CGFloat(c) * w,
                        y: CGFloat(r) * h),
                    size: 5
                )
            }
        }
        return path
    }
}
