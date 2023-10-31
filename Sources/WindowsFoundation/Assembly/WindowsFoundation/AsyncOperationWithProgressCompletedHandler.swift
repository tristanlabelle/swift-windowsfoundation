// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents a method that handles the completed event of an asynchronous operation that provides progress updates.
/// - Parameter asyncStatus: One of the enumeration values.
/// - Parameter asyncInfo: The asynchronous operation.
public typealias WindowsFoundation_AsyncOperationWithProgressCompletedHandler<TResult, TProgress> = (WindowsFoundation_IAsyncOperationWithProgress<TResult, TProgress>?, WindowsFoundation_AsyncStatus) throws -> Swift.Void

public enum WindowsFoundation_AsyncOperationWithProgressCompletedHandlerProjection {
}