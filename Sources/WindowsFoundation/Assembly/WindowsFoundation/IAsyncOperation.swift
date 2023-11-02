// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents an asynchronous operation, which returns a result upon completion. This is the return type for many Windows Runtime asynchronous methods that have results but don't report progress.
public protocol WindowsFoundation_IAsyncOperationProtocol<TResult>: WindowsFoundation_IAsyncInfoProtocol {
    associatedtype TResult

    /// Gets or sets the method that handles the operation completed notification.
    /// - Returns: The method that handles the notification.
    var completed: WindowsFoundation_AsyncOperationCompletedHandler<TResult>? { get throws }
    func completed(_ newValue: WindowsFoundation_AsyncOperationCompletedHandler<TResult>?) throws

    /// Returns the results of the operation.
    /// - Returns: The results of the operation.
    func getResults() throws -> TResult
}

/// Represents an asynchronous operation, which returns a result upon completion. This is the return type for many Windows Runtime asynchronous methods that have results but don't report progress.
public typealias WindowsFoundation_IAsyncOperation<TResult> = any WindowsFoundation_IAsyncOperationProtocol<TResult>

public enum WindowsFoundation_IAsyncOperationProjection {
}