// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Notifies listeners of dynamic changes to a map, such as when items are added or removed.
public protocol WindowsFoundationCollections_IObservableMapProtocol<K, V>: WindowsFoundationCollections_IMapProtocol {
    associatedtype K
    associatedtype V
}

/// Notifies listeners of dynamic changes to a map, such as when items are added or removed.
public typealias WindowsFoundationCollections_IObservableMap<K, V> = any WindowsFoundationCollections_IObservableMapProtocol<K, V>

public enum WindowsFoundationCollections_IObservableMapProjection {
}