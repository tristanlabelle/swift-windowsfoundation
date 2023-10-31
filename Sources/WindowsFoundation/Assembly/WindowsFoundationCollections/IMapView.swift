// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents an immutable view into a map.
public protocol WindowsFoundationCollections_IMapViewProtocol<K, V>: WindowsFoundationCollections_IIterableProtocol where T == WindowsFoundationCollections_IKeyValuePair<K, V>? {
    associatedtype K
    associatedtype V

    /// Gets the number of elements in the map.
    /// - Returns: The number of elements in the map.
    var size: Swift.UInt32 { get throws }

    /// Returns the item at the specified key in the map view.
    /// - Parameter key: The key to locate in the map view.
    /// - Returns: The value, if an item with the specified key exists. Use the **HasKey** method to determine whether the key exists.
    func lookup(_ key: K) throws -> V

    /// Determines whether the map view contains the specified key.
    /// - Parameter key: The key to locate in the map view.
    /// - Returns: True if the key is found; otherwise, false.
    func hasKey(_ key: K) throws -> Swift.Bool
    func split(_ first: inout WindowsFoundationCollections_IMapView<K, V>?, _ second: inout WindowsFoundationCollections_IMapView<K, V>?) throws
}

/// Represents an immutable view into a map.
public typealias WindowsFoundationCollections_IMapView<K, V> = any WindowsFoundationCollections_IMapViewProtocol<K, V>

public enum WindowsFoundationCollections_IMapViewProjection {
}