// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents a method that handles the completed event of an asynchronous action that provides progress updates.
/// - Parameter asyncStatus: One of the enumeration values.
/// - Parameter asyncInfo: The asynchronous action.
public typealias WindowsFoundation_AsyncActionWithProgressCompletedHandler<TProgress> = (WindowsFoundation_IAsyncActionWithProgress<TProgress>?, WindowsFoundation_AsyncStatus) throws -> Swift.Void

public enum WindowsFoundation_AsyncActionWithProgressCompletedHandlerProjection {
}