✨ Liquid Glass Quote UI — SwiftUI (iOS 26)

A modern Liquid Glass UI demo built with SwiftUI showcasing Apple’s new Glass Effect APIs in iOS 26.

This project demonstrates how to create depth-aware, interactive glass surfaces with smooth transitions, composable views, and fluid symbol animations.

🖼️ Preview

Quote text displayed on a glass panel over a scenic background
Expandable action cluster with Share, Save, and Like glass buttons
Smooth transitions and symbol replacements when toggling actions

🚀 Features
🫧 Liquid Glass UI

Uses .glassEffect() to render reflective, depth-aware glass surfaces

Coordinated glass transitions via GlassEffectContainer

🔗 Glass Coherence & Transitions

Shares a visual identity between elements using
.glassEffectID(_, in:)

Smooth, natural transitions across UI states

🧩 Composable Architecture

Small, testable SwiftUI views:

QuoteView

ActionButtonsView

ExpandedActionsView

BackgroundView

❤️ Stateful Actions

Like / Save toggles

Fluid SF Symbols animation using
.contentTransition(.symbolEffect(.replace))

🌲 Asset-Driven Background

Full-bleed scenic forest image bundled with the app

🛠 Requirements
Tool	Version
Xcode	26 or later
iOS	26.0 or later

⚠️ Important
If you target earlier iOS versions or older Xcode releases, Glass-related APIs will not compile.

⚙️ Getting Started

Open LiquidGlassExample.xcodeproj in Xcode

Select an iOS 26+ simulator or device

Build & Run

👆 How to Use

Tap the more button ( … ) to expand additional actions

Tap the heart to like / unlike (icon & tint animate)

Tap the bookmark to save / unsave

Tap Share to trigger a placeholder action
(prints to console — replace with a real share flow)


📁 File Responsibilities
LiquidGlassWithInSwiftUIApp.swift

App entry point

Injects the quote into ContentView

ContentView.swift

Composes background, quote, and action buttons using ZStack & VStack

BackgroundView.swift

Full-screen scenic background using the forest asset

TitleViewWithGlassDesign.swift

Centered quote text rendered on a glass surface

ActionButtonsViewWithGlassDesign.swift

Hosts the glass container

Manages expandable action cluster state

ExpandedButtonsWithGlassDesign.swift

Share / Save / Like buttons

Individual glass IDs and behaviors

View+Extension.swift

Reusable view modifiers:

glassCircleButton

actionIcon

🧠 Notable SwiftUI APIs Used
API	Purpose
.glassEffect()	Applies interactive glass appearance
GlassEffectContainer {}	Coordinates glass blending & transitions
.glassEffectID(_:in:)	Links glass elements across states
.contentTransition(.symbolEffect(.replace))	Smooth SF Symbol transitions
@Namespace	Enables shared transitions between views
📌 Why This Matters

This project is a practical reference for:

Learning Liquid Glass APIs

Understanding coordinated transitions

Building future-ready SwiftUI UIs for iOS 26+

📄 License

MIT — Feel free to use, modify, and experiment.
