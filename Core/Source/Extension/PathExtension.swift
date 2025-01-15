//
//  PathExtension.swift
//
//
//  Created by Francisco Romero on 08/01/25.
//

import SwiftUI

// MARK: Rect Stroke
package extension Path {
    
    mutating func addStrokeLines(from initial: CGPoint, to points: CGPoint...) {
        self.move(to: initial)
        for p in points {
            self.addLine(to: p)
        }
    }
    
    mutating func addRectCornersStroke(_ corner: CGFloat,in rect: CGRect) {
        
        let x1 = rect.minX
        let x2 = rect.maxX
        let y1 = rect.minY
        let y2 = rect.maxY
        
        addStrokeLines(from:
                    CGPoint(x: x1, y: y1 + corner),
                  to:
                    CGPoint(x: x1, y: y1),
                    CGPoint(x: x1 + corner, y: y1))

        addStrokeLines(from:
                    CGPoint(x: x2 - corner, y: y1),
                  to:
                    CGPoint(x: x2, y: y1),
                    CGPoint(x: x2, y: y1 + corner))
        
        addStrokeLines(from:
                    CGPoint(x: x2, y: y2 - corner),
                  to:
                    CGPoint(x: x2, y: y2),
                    CGPoint(x: x2 - corner, y: y2))
        
        addStrokeLines(from:
                    CGPoint(x: x1 + corner, y: y2 ),
                  to:
                    CGPoint(x: x1, y: y2),
                    CGPoint(x: x1, y: y2 - corner))
    }
    
}

// MARK: Arc Stroke
package extension Path {
    
    
    mutating func addArcStroke(center: CGPoint, radius: CGFloat, startAngle: Angle, endAngle: Angle, clockwise: Bool) {
        
        self.move(to: center)
        self.move(to: pointFrom(
            center: center,
            toAngle: startAngle,
            withRadius: radius)
        )
        self.addArc(center: center,
                    radius: radius,
                    startAngle: startAngle,
                    endAngle: endAngle,
                    clockwise: clockwise
        )
        
    }
    
    private func pointFrom(center c: CGPoint,toAngle a: Angle,withRadius r: Double) -> CGPoint {
        return CGPoint(x: c.x + (r * cos(a.radians)),
                       y: c.y + (r * sin(a.radians)))
    }
}
