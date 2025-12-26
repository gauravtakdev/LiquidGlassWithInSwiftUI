//
//  TitleViewWithGlassDesign.swift
//  LiquidGlassWithInSwiftUI
//
//  Created by Gaurav Tak on 26/12/25.
//

import SwiftUI

struct TitleViewWithGlassDesign: View {

    let title: String

    var body: some View {
        Text(title)
            .font(.title)
            .fontDesign(.serif)
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .padding(.all, 24)
            .glassEffect(.clear.interactive())
    }
}

#Preview {
    TitleViewWithGlassDesign(title: "Liquid Glass Demo Example App")
}
