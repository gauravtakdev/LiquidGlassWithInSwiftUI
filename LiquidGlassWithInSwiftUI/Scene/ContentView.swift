//
//  ContentView.swift
//  LiquidGlassWithInSwiftUI
//
//  Created by Gaurav Tak on 26/12/25.
//

import SwiftUI

import SwiftUI

struct ContentView: View {

    let title: String

    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 16) {
                TitleViewWithGlassDesign(title: title)
                ActionButtonsWithGlassDesign()
            }
        }
    }
}

#Preview {
    ContentView(title: "Liquid Glass Demo App")
}
