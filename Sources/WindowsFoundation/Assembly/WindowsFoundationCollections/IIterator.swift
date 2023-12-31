// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Supports simple iteration over a collection.
public protocol WindowsFoundationCollections_IIteratorProtocol<T>: IInspectableProtocol {
    associatedtype T

    /// Gets the current item in the collection.
    /// - Returns: The current item in the collection.
    var current: T { get throws }

    /// Gets a value that indicates whether the iterator refers to a current item or is at the end of the collection.
    /// - Returns: True if the iterator refers to a valid item in the collection; otherwise, false.
    var hasCurrent: Swift.Bool { get throws }

    /// Advances the iterator to the next item in the collection.
    /// - Returns: True if the iterator refers to a valid item in the collection; false if the iterator passes the end of the collection.
    func moveNext() throws -> Swift.Bool

    /// Retrieves all items in the collection.
    /// - Parameter items: The items in the collection.
    /// - Returns: The number of items in the collection.
    func getMany(_ items: [T]) throws -> Swift.UInt32
}

/// Supports simple iteration over a collection.
public typealias WindowsFoundationCollections_IIterator<T> = any WindowsFoundationCollections_IIteratorProtocol<T>

public enum WindowsFoundationCollections_IIteratorProjection {
}