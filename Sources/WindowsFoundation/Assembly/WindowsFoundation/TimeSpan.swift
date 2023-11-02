// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents a time interval as a signed 64-bit integer value.
public struct WindowsFoundation_TimeSpan: Hashable, Codable {
    /// A time period expressed in 100-nanosecond units.
    public var duration: Swift.Int64

    public init() {
        self.duration = 0
    }

    public init(duration: Swift.Int64) {
        self.duration = duration
    }
}

extension WindowsFoundation_TimeSpan: COM.ABIInertProjection {
    public typealias SwiftValue = Self
    public typealias ABIValue = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CTimeSpan

    public static var abiDefaultValue: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CTimeSpan {
        .init()
    }

    public static func toSwift(_ value: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CTimeSpan) -> Self {
        .init(duration: value.Duration)
    }

    public static func toABI(_ value: Self) -> CWindowsFoundation.__x_ABI_CWindows_CFoundation_CTimeSpan {
        .init(Duration: value.duration)
    }
}