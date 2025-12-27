//
//  View+Extension.swift
//  LiquidGlassWithInSwiftUI
//
//  Created by Gaurav Tak on 27/12/25.
//

import SwiftUI
import Foundation

/// Reusable SwiftUI view modifiers for creating
/// Liquid Glass–style circular action buttons and icons.
extension View {

    /// Applies a circular glass-style button appearance to any view.
    ///
    /// - Parameters:
    ///   - diameter: The width and height of the circular button.
    ///               Defaults to `72`, suitable for primary action buttons.
    ///   - tint: Foreground tint color for the content (icon/text).
    ///           Defaults to `.white` for contrast on glass surfaces.
    ///
    /// - Returns: A view styled as an interactive circular glass button.
    ///
    /// Usage:
    /// ```swift
    /// Image(systemName: "heart.fill")
    ///     .glassCircleButton()
    /// ```
    func glassCircleButton(
        diameter: CGFloat = 72,
        tint: Color = .white
    ) -> some View {
        self
            // Applies tint color to icons or text inside the button
            .foregroundStyle(tint)

            // Ensures the view is rendered as a perfect circle
            .frame(width: diameter, height: diameter)

            // Defines the tappable area explicitly as a circle
            .contentShape(Circle())

            // Adds iOS glass material with interactive response
            .glassEffect(.clear.interactive())

            // Clips the view to a circular shape
            .clipShape(Circle())
    }

    /// Styles an icon for action-based UI with smooth symbol transitions.
    ///
    /// - Parameter font: Font used for the symbol.
    ///                   Defaults to `.title` for clear visual hierarchy.
    ///
    /// - Returns: A view configured for animated symbol replacement.
    ///
    /// Usage:
    /// ```swift
    /// Image(systemName: isLiked ? "heart.fill" : "heart")
    ///     .actionIcon()
    /// ```
    func actionIcon(
        font: Font = .title
    ) -> some View {
        self
            // Sets the font size and weight for the symbol
            .font(font)

            // Enables smooth animated replacement between symbols
            .contentTransition(.symbolEffect(.replace))
    }
}

/// Variant of glassCircleButton that supports matched glass animations
/// using a shared namespace.
extension View {

    /// Applies a circular glass-style button with a shared glass effect ID
    /// for coordinated transitions and animations.
    ///
    /// - Parameters:
    ///   - id: Unique identifier for the glass effect.
    ///         Must match across views for seamless transitions.
    ///   - namespace: Shared animation namespace.
    ///   - diameter: The width and height of the circular button.
    ///   - tint: Foreground tint color for the content.
    ///
    /// - Returns: A view styled as a matched glass circular button.
    ///
    /// Usage:
    /// ```swift
    /// Image(systemName: "share")
    ///     .glassCircleButton(
    ///         id: "share_button",
    ///         in: namespace
    ///     )
    /// ```
    func glassCircleButton(
        id: String,
        in namespace: Namespace.ID,
        diameter: CGFloat = 72,
        tint: Color = .white
    ) -> some View {
        self
            // Applies tint color to the content
            .foregroundStyle(tint)

            // Defines a fixed circular layout
            .frame(width: diameter, height: diameter)

            // Ensures touch interaction matches the circular shape
            .contentShape(Circle())

            // Applies interactive glass material
            .glassEffect(.clear.interactive())

            // Links this glass surface to a shared animation namespace
            .glassEffectID(id, in: namespace)

            // Clips the final output to a perfect circle
            .clipShape(Circle())
    }
}

