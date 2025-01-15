//
//  MoleculeColorPalleteView.swift
//
//
//  Created by Francisco Romero on 10/01/25.
//

import SwiftUI
import RoVaAtomicSciFiCore
import RoVaAtomicSciFiAtom

public struct MoleculeColorPalleteView: AtomView {
    
    @Environment(\.colorScheme) public  var scheme: ColorScheme
    @State private var spacing = CGFloat(4)
    public init() {
        
    }
    public var body: some View {
        HStack (spacing: spacing) {
            VStack (spacing: spacing){
                Rectangle().foregroundStyle(scheme.color.neutral)
                Rectangle().foregroundStyle(scheme.color.neutralA)
                Rectangle().foregroundStyle(scheme.color.neutralB)
                Rectangle().foregroundStyle(scheme.color.neutralC)
                Rectangle().foregroundStyle(scheme.color.neutralD)
            }
            
            VStack (spacing: spacing){
                Rectangle().foregroundStyle(scheme.color.primary)
                Rectangle().foregroundStyle(scheme.color.primaryA)
                Rectangle().foregroundStyle(scheme.color.primaryB)
                Rectangle().foregroundStyle(scheme.color.primaryC)
                Rectangle().foregroundStyle(scheme.color.primaryD)
            }
            
            VStack (spacing: spacing){
                Rectangle().foregroundStyle(scheme.color.secondary)
                Rectangle().foregroundStyle(scheme.color.secondaryA)
                Rectangle().foregroundStyle(scheme.color.secondaryB)
                Rectangle().foregroundStyle(scheme.color.secondaryC)
                Rectangle().foregroundStyle(scheme.color.secondaryD)
            }
            
            VStack (spacing: spacing){
                Rectangle().foregroundStyle(scheme.color.foreground)
                Rectangle().foregroundStyle(scheme.color.foregroundA)
                Rectangle().foregroundStyle(scheme.color.foregroundB)
                Rectangle().foregroundStyle(scheme.color.foregroundC)
                Rectangle().foregroundStyle(scheme.color.foregroundD)
            }
            
        }
    }
}

