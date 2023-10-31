// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Specifies the status of an asynchronous operation.
public struct WindowsFoundation_AsyncStatus: RawRepresentable, Hashable, Codable {
    public var rawValue: Swift.Int32

    public init(rawValue: Swift.Int32 = 0) {
        self.rawValue = rawValue
    }

    /// The operation was canceled.
    public static let canceled = Self(rawValue: 2)

    /// The operation has completed.
    public static let completed = Self(rawValue: 1)

    /// The operation has encountered an error.
    public static let error = Self(rawValue: 3)

    /// The operation has started.
    public static let started = Self(rawValue: 0)
}

extension WindowsFoundation_AsyncStatus: WindowsRuntime.EnumProjection {
    public typealias CEnum = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CAsyncStatus
}