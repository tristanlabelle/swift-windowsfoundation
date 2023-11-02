// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents a random-access collection of elements.
public protocol WindowsFoundationCollections_IVectorProtocol<T>: WindowsFoundationCollections_IIterableProtocol {
    associatedtype T

    /// Gets the number of items in the vector.
    /// - Returns: The number of items in the vector.
    var size: Swift.UInt32 { get throws }

    /// Returns the item at the specified index in the vector.
    /// - Parameter index: The zero-based index of the item.
    /// - Returns: The item at the specified index.
    func getAt(_ index: Swift.UInt32) throws -> T

    /// Returns an immutable view of the vector.
    /// - Returns: The view of the vector.
    func getView() throws -> WindowsFoundationCollections_IVectorView<T>?

    /// Retrieves the index of a specified item in the vector.
    /// - Parameter value: The item to find in the vector.
    /// - Parameter index: If the item is found, this is the zero-based index of the item; otherwise, this parameter is 0.
    /// - Returns: **true** if the item is found; otherwise, **false**.
    func indexOf(_ value: T, _ index: inout Swift.UInt32) throws -> Swift.Bool

    /// Sets the value at the specified index in the vector.
    /// - Parameter value: The item to set.
    /// - Parameter index: The zero-based index at which to set the value.
    func setAt(_ index: Swift.UInt32, _ value: T) throws

    /// Inserts an item at a specified index in the vector.
    /// - Parameter index: The zero-based index.
    /// - Parameter value: The item to insert.
    func insertAt(_ index: Swift.UInt32, _ value: T) throws

    /// Removes the item at the specified index in the vector.
    /// - Parameter index: The zero-based index of the vector item to remove.
    func removeAt(_ index: Swift.UInt32) throws

    /// Appends an item to the end of the vector.
    /// - Parameter value: The item to append to the vector.
    func append(_ value: T) throws

    /// Removes the last item from the vector.
    func removeAtEnd() throws

    /// Removes all items from the vector.
    func clear() throws

    /// Gets a collection of items from the vector beginning at the given index.
    /// - Parameter items: An array to copy the items into.
    /// - Parameter startIndex: The zero-based index to start at.
    /// - Returns: A status code indicating the result of the operation.
    func getMany(_ startIndex: Swift.UInt32, _ items: [T]) throws -> Swift.UInt32

    /// Replaces all the items in the vector with the specified items.
    /// - Parameter items: The collection of items to add to the vector.
    func replaceAll(_ items: [T]) throws
}

/// Represents a random-access collection of elements.
public typealias WindowsFoundationCollections_IVector<T> = any WindowsFoundationCollections_IVectorProtocol<T>

public enum WindowsFoundationCollections_IVectorProjection {
}