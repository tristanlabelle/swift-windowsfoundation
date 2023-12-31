// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents number values that specify a height and width.
public struct WindowsFoundation_Size: Hashable, Codable {
    /// The width.
    public var width: Swift.Float

    /// The height.
    public var height: Swift.Float

    public init() {
        self.width = 0
        self.height = 0
    }

    public init(width: Swift.Float, height: Swift.Float) {
        self.width = width
        self.height = height
    }
}

extension WindowsFoundation_Size: COM.ABIInertProjection {
    public typealias SwiftValue = Self
    public typealias ABIValue = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CSize

    public static var abiDefaultValue: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CSize {
        .init()
    }

    public static func toSwift(_ value: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CSize) -> Self {
        .init(width: value.Width, height: value.Height)
    }

    public static func toABI(_ value: Self) -> CWindowsFoundation.__x_ABI_CWindows_CFoundation_CSize {
        .init(Width: value.width, Height: value.height)
    }
}