// Generated by swift-winrt
// swiftlint:disable all

import WindowsRuntime
import struct Foundation.UUID

/// Describes the action that causes a change to a collection.
public struct WindowsFoundationCollections_CollectionChange: RawRepresentable, Hashable, Codable {
    public var rawValue: Swift.Int32

    public init(rawValue: Swift.Int32 = 0) {
        self.rawValue = rawValue
    }

    /// The collection is changed.
    public static let reset = Self(rawValue: 0)

    /// An item is added to the collection.
    public static let itemInserted = Self(rawValue: 1)

    /// An item is removed from the collection.
    public static let itemRemoved = Self(rawValue: 2)

    /// An item is changed in the collection.
    public static let itemChanged = Self(rawValue: 3)
}

public protocol WindowsFoundationCollections_IIterableProtocol<T>: IInspectableProtocol {
    associatedtype T

    /// Returns an iterator for the items in the collection.
    /// - Returns: The iterator.
    func first() throws -> WindowsFoundationCollections_IIterator<T>?
}

/// Exposes an iterator that supports simple iteration over a collection of a specified type.
public typealias WindowsFoundationCollections_IIterable<T> = any WindowsFoundationCollections_IIterableProtocol<T>

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

public protocol WindowsFoundationCollections_IKeyValuePairProtocol<K, V>: IInspectableProtocol {
    associatedtype K
    associatedtype V

    /// Gets the key of the key-value pair.
    /// - Returns: The key.
    var key: K { get throws }

    /// Gets the value of the key-value pair.
    /// - Returns: The value.
    var value: V { get throws }
}

/// Represents a key-value pair. This is typically used as a constraint type when you need to encapsulate two type parameters into one to satisfy the constraints of another generic interface.
public typealias WindowsFoundationCollections_IKeyValuePair<K, V> = any WindowsFoundationCollections_IKeyValuePairProtocol<K, V>

public protocol WindowsFoundationCollections_IMapChangedEventArgsProtocol<K>: IInspectableProtocol {
    associatedtype K

    /// Gets the type of change that occurred in the map.
    /// - Returns: The type of change in the map.
    var collectionChange: WindowsFoundationCollections_CollectionChange { get throws }

    /// Gets the key of the item that changed.
    /// - Returns: The key of the item that changed.
    var key: K { get throws }
}

/// Provides data for the changed event of a map collection.
public typealias WindowsFoundationCollections_IMapChangedEventArgs<K> = any WindowsFoundationCollections_IMapChangedEventArgsProtocol<K>

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
    /// - Parameter value: The item to insert.
    /// - Parameter key: The key associated with the item to insert.
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

public protocol WindowsFoundationCollections_IObservableMapProtocol<K, V>: WindowsFoundationCollections_IMapProtocol {
    associatedtype K
    associatedtype V
}

/// Notifies listeners of dynamic changes to a map, such as when items are added or removed.
public typealias WindowsFoundationCollections_IObservableMap<K, V> = any WindowsFoundationCollections_IObservableMapProtocol<K, V>

public protocol WindowsFoundationCollections_IObservableVectorProtocol<T>: WindowsFoundationCollections_IVectorProtocol {
    associatedtype T
}

/// Notifies listeners of changes to the vector.
public typealias WindowsFoundationCollections_IObservableVector<T> = any WindowsFoundationCollections_IObservableVectorProtocol<T>

public protocol WindowsFoundationCollections_IPropertySetProtocol: WindowsFoundationCollections_IObservableMapProtocol, WindowsFoundationCollections_IMapProtocol, WindowsFoundationCollections_IIterableProtocol where K == Swift.String, V == WindowsRuntime.IInspectable?, T == WindowsFoundationCollections_IKeyValuePair<Swift.String, WindowsRuntime.IInspectable?>? {
}

/// Represents a collection of key-value pairs, correlating several other collection interfaces.
public typealias WindowsFoundationCollections_IPropertySet = any WindowsFoundationCollections_IPropertySetProtocol

public protocol WindowsFoundationCollections_IVectorChangedEventArgsProtocol: IInspectableProtocol {
    /// Gets the type of change that occurred in the vector.
    /// - Returns: The type of change in the vector.
    var collectionChange: WindowsFoundationCollections_CollectionChange { get throws }

    /// Gets the position where the change occurred in the vector.
    /// - Returns: The zero-based position where the change occurred in the vector, if applicable.
    var index: Swift.UInt32 { get throws }
}

/// Provides data for the changed event of a vector.
public typealias WindowsFoundationCollections_IVectorChangedEventArgs = any WindowsFoundationCollections_IVectorChangedEventArgsProtocol

public protocol WindowsFoundationCollections_IVectorViewProtocol<T>: WindowsFoundationCollections_IIterableProtocol {
    associatedtype T

    /// Gets the number of items in the vector view.
    /// - Returns: The number of items in the vector view.
    var size: Swift.UInt32 { get throws }

    /// Returns the item at the specified index in the vector view.
    /// - Parameter index: The zero-based index of the item.
    /// - Returns: The item at the specified index.
    func getAt(_ index: Swift.UInt32) throws -> T

    /// Retrieves the index of a specified item in the vector view.
    /// - Parameter value: The item to find in the vector view.
    /// - Parameter index: If the item is found, this is the zero-based index of the item; otherwise, this parameter is 0.
    /// - Returns: **true** if the item is found; otherwise, **false**.
    func indexOf(_ value: T, _ index: inout Swift.UInt32) throws -> Swift.Bool

    /// Gets a collection of items from the vector view beginning at the given index.
    /// - Parameter startIndex: The zero-based index to start at.
    /// - Parameter items: An array to copy the items into.
    /// - Returns: A status code indicating the result of the operation.
    func getMany(_ startIndex: Swift.UInt32, _ items: [T]) throws -> Swift.UInt32
}

/// Represents an immutable view into a vector.
public typealias WindowsFoundationCollections_IVectorView<T> = any WindowsFoundationCollections_IVectorViewProtocol<T>

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
    /// - Parameter index: The zero-based index at which to set the value.
    /// - Parameter value: The item to set.
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
    /// - Parameter startIndex: The zero-based index to start at.
    /// - Parameter items: An array to copy the items into.
    /// - Returns: A status code indicating the result of the operation.
    func getMany(_ startIndex: Swift.UInt32, _ items: [T]) throws -> Swift.UInt32

    /// Replaces all the items in the vector with the specified items.
    /// - Parameter items: The collection of items to add to the vector.
    func replaceAll(_ items: [T]) throws
}

/// Represents a random-access collection of elements.
public typealias WindowsFoundationCollections_IVector<T> = any WindowsFoundationCollections_IVectorProtocol<T>

/// Represents the method that handles the changed event of an observable map.
/// - Parameter @event: 
      
/// - Parameter sender: The observable map that changed.
public typealias WindowsFoundationCollections_MapChangedEventHandler<K, V> = (WindowsFoundationCollections_IObservableMap<K, V>?, WindowsFoundationCollections_IMapChangedEventArgs<K>?) throws -> Swift.Void

/// Represents the method that handles the changed event of an observable vector.
/// - Parameter @event: 
      
/// - Parameter sender: The observable vector that changed.
public typealias WindowsFoundationCollections_VectorChangedEventHandler<T> = (WindowsFoundationCollections_IObservableVector<T>?, WindowsFoundationCollections_IVectorChangedEventArgs?) throws -> Swift.Void