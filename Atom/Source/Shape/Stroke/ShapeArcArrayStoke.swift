//
//  ShapeArcArrayStoke.swift
//
//
//  Created by Francisco Romero on 08/01/25.
//

import SwiftUI
import RoVaAtomicSciFiCore

public struct ShapeArcArrayStoke: AtomShape {
    
    public typealias AnimatableType = AnimatablePair<AnimatablePair<CGFloat,CGFloat>,CGFloat>
    
    public var items: Int
    public var radius: CGFloat
    public var startAngle: CGFloat
    public var angle: CGFloat
    
    public var animatableData : AnimatableType {
        get {
            AnimatablePair(
                AnimatablePair(radius, startAngle),
                angle
            )
        }
        set {
            radius = newValue.first.first
            startAngle = newValue.first.second
            angle = newValue.second
        }
    }
    
    public init(items: Int, radius: CGFloat, startAngle: CGFloat = 0.0, angle: CGFloat) {
        self.items = items
        self.radius = radius
        self.startAngle = startAngle
        let maxAngle = CGFloat(360)/CGFloat(items)
        if angle > maxAngle {
            self.angle = maxAngle
        } else {
            self.angle = angle
        }
    }
    
    public init(items: Int, radius: CGFloat, startAngle: CGFloat = 0.0, space: CGFloat) {
        self.items = items
        self.radius = radius
        self.startAngle = startAngle
        let maxAngle = CGFloat(360)/CGFloat(items)
        if space > maxAngle {
            self.angle = space
        } else {
            self.angle = (maxAngle - space)
        }
    }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
    
        let center = CGPoint(x: rect.midX,
                             y: rect.midY)
        if items > 1 {
            let itemAngle = CGFloat(360) / CGFloat(items)
            for i in 0..<items {
                let ang1 = startAngle + (itemAngle * CGFloat(i)) - (angle / 2) - 90                
                path.addArcStroke(center: center,
                                  radius: radius,
                                  startAngle: Angle(
                                    degrees: ang1
                                  ),
                                  endAngle: Angle(
                                    degrees: ang1 + angle
                                  ),
                                  clockwise: false)
            }
        } else {
            path.addArcStroke(center: center,
                              radius: radius,
                              startAngle: Angle(degrees: 0),
                              endAngle: Angle(degrees: 360),
                              clockwise: false)
        }
        
        
        
        return path
    }

}
