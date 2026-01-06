//
//  ActionButtonsWithGlassDesign.swift
//  LiquidGlassWithInSwiftUI
//
//  Created by Gaurav Tak on 26/12/25.
//

import SwiftUI

struct ActionButtonsWithGlassDesign: View {
    @State private var isSaved: Bool = false
    @State private var isLiked: Bool = false
    @State private var isMoreShown: Bool = false
    @Namespace private var namespace

    var body: some View {
        GlassEffectContainer(spacing: 20) {
            VStack(spacing: 16) {
                if isMoreShown {
                    ExpandedButtonsWithGlassDesign(
                        isSaved: $isSaved,
                        isLiked: $isLiked,
                        namespace: namespace
                    )
                }

                ToggleButtonWithGlassDesign(
                    isMoreShown: $isMoreShown,
                    namespace: namespace
                )
            }
        }
        .padding()
    }
}

private struct ToggleButtonWithGlassDesign: View {

    @Binding var isMoreShown: Bool
    let namespace: Namespace.ID

    var body: some View {
        Button {
            print(isMoreShown ? "Close tapped" : "More tapped")
            withAnimation {
                isMoreShown.toggle()
            }
        } label: {
            Image(systemName: isMoreShown ? "multiply" : "ellipsis")
                .actionIcon()
        }
        .glassCircleButton()
        .glassEffectID("ToggleButton", in: namespace)
    }
}

#Preview {
    ActionButtonsWithGlassDesign()
}
