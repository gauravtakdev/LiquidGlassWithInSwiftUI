//
//  View+Extension.swift
//  LiquidGlassWithInSwiftUI
//
//  Created by Gaurav Tak on 27/12/25.
//

import SwiftUI
import Foundation

extension View {
    func glassCircleButton(diameter: CGFloat = 72, tint: Color = .white) -> some View {
        self
            .foregroundStyle(tint)
            .frame(width: diameter, height: diameter)
            .contentShape(Circle())
            .glassEffect(.clear.interactive())
            .clipShape(Circle())
    }
    
    func actionIcon(font: Font = .title) -> some View {
        self
            .font(font)
            .contentTransition(.symbolEffect(.replace))
    }
}

extension View {
    func glassCircleButton(
        id: String,
        in namespace: Namespace.ID,
        diameter: CGFloat = 72,
        tint: Color = .white
    ) -> some View {
        self
            .foregroundStyle(tint)
            .frame(width: diameter, height: diameter)
            .contentShape(Circle())
            .glassEffect(.clear.interactive())
            .glassEffectID(id, in: namespace)
            .clipShape(Circle())
    }
}
