//
//  BackgroundView.swift
//  LiquidGlassWithInSwiftUI
//
//  Created by Gaurav Tak on 26/12/25.
//

import SwiftUI

struct BackgroundView: View {

    var body: some View {
        Image("forest")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
