//
//  TitleView.swift
//  LiquidGlassExample
//
//  Created by Gaurav Tak on 26/12/25.
//

import SwiftUI

struct TitleView: View {

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
    TitleView(title: "Liquid Glass Demo Example App")
}
