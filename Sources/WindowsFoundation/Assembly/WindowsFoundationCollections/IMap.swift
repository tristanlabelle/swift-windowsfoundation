// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents an associative collection, also known as a map or a dictionary.
public protocol WindowsFoundationCollections_IMapProtocol<K, V>: WindowsFoundationCollections_IIterableProtocol where T == WindowsFoundationCollections_IKeyValuePair<K, V>? {
    associatedtype K
    associatedtype V

    /// Gets the number of items in the map.
    /// - Returns: The number of items in the map.
    var size: Swift.UInt32 { get throws }

    /// Returns the item at the specified key in the map.
    /// - Parameter key: The key associated with the item to locate.
    /// - Returns: The value, if an item with the specified key exists. Use the **HasKey** method to determine whether the key exists.
    func lookup(_ key: K) throws -> V

    /// Determines whether the map contains the specified key.
    /// - Parameter key: The key associated with the item to locate.
    /// - Returns: True if the key is found; otherwise, false.
    func hasKey(_ key: K) throws -> Swift.Bool

    /// Returns an immutable view of the map.
    /// - Returns: The view of the map.
    func getView() throws -> WindowsFoundationCollections_IMapView<K, V>?

    /// Inserts or replaces an item in the map.
    /// - Parameter key: The key associated with the item to insert.
    /// - Parameter value: The item to insert.
    /// - Returns: True if an item with the specified key is an existing item that was replaced; otherwise, false.
    func insert(_ key: K, _ value: V) throws -> Swift.Bool

    /// Removes an item from the map.
    /// - Parameter key: The key associated with the item to remove.
    func remove(_ key: K) throws

    /// Removes all items from the map.
    func clear() throws
}

/// Represents an associative collection, also known as a map or a dictionary.
public typealias WindowsFoundationCollections_IMap<K, V> = any WindowsFoundationCollections_IMapProtocol<K, V>

public enum WindowsFoundationCollections_IMapProjection {
}