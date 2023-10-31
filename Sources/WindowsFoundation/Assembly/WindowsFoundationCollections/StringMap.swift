// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

public final class WindowsFoundationCollections_StringMap: WinRTProjectionBase<WindowsFoundationCollections_StringMap>, WinRTProjection, WindowsFoundationCollections_IMapProtocol, WindowsFoundationCollections_IIterableProtocol, WindowsFoundationCollections_IObservableMapProtocol {
    public typealias SwiftObject = WindowsFoundationCollections_StringMap
    public typealias COMInterface = CWindowsFoundation.__FIMap_2_HSTRING_HSTRING
    public typealias COMVirtualTable = CWindowsFoundation.__FIMap_2_HSTRING_HSTRINGVtbl

    public static let iid = IID(0xF6D1F700, 0x49C2, 0x52AE, 0x8154, 0x826F9908773C)
    public static let runtimeClassName = "Windows.Foundation.Collections.StringMap"

    public typealias K = Swift.String
    public typealias V = Swift.String
    public typealias T = WindowsFoundationCollections_IKeyValuePair<Swift.String, Swift.String>?

    // Windows.Foundation.Collections.IMap`2<String, String>
    public var size: Swift.UInt32 {
        get throws {
            var _result: UINT32 = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_Size(comPointer, &_result))
            return _result
        }
    }

    public func lookup(_ key: Swift.String) throws -> Swift.String {
        var key = try WindowsRuntime.HStringProjection.toABI(key)
        defer { WindowsRuntime.HStringProjection.release(&key) }
        var _result: CWindowsFoundation.HSTRING? = nil
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Lookup(comPointer, key, &_result))
        return WindowsRuntime.HStringProjection.toSwift(consuming: &_result)
    }

    public func hasKey(_ key: Swift.String) throws -> Swift.Bool {
        var key = try WindowsRuntime.HStringProjection.toABI(key)
        defer { WindowsRuntime.HStringProjection.release(&key) }
        var _result: boolean = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.HasKey(comPointer, key, &_result))
        return COM.BooleanProjection.toSwift(_result)
    }

    public func getView() throws -> WindowsFoundationCollections_IMapView<Swift.String, Swift.String>? {
        var _result: UnsafeMutablePointer<__FIMapView_2_HSTRING_HSTRING>? = nil
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetView(comPointer, &_result))
        return WindowsFoundationCollections_IMapViewProjection.String_String.toSwift(consuming: &_result)
    }

    public func insert(_ key: Swift.String, _ value: Swift.String) throws -> Swift.Bool {
        var key = try WindowsRuntime.HStringProjection.toABI(key)
        defer { WindowsRuntime.HStringProjection.release(&key) }
        var value = try WindowsRuntime.HStringProjection.toABI(value)
        defer { WindowsRuntime.HStringProjection.release(&value) }
        var _result: boolean = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Insert(comPointer, key, value, &_result))
        return COM.BooleanProjection.toSwift(_result)
    }

    public func remove(_ key: Swift.String) throws {
        var key = try WindowsRuntime.HStringProjection.toABI(key)
        defer { WindowsRuntime.HStringProjection.release(&key) }
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Remove(comPointer, key))
    }

    public func clear() throws {
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Clear(comPointer))
    }

    // Windows.Foundation.Collections.IIterable`1<Windows.Foundation.Collections.IKeyValuePair`2<String, String>>
    private var _iiterable: UnsafeMutablePointer<__FIIterable_1___FIKeyValuePair_2_HSTRING_HSTRING>! = nil

    private func _getIIterable() throws -> UnsafeMutablePointer<__FIIterable_1___FIKeyValuePair_2_HSTRING_HSTRING> {
        let iid = IID(0xE9BDAAF0, 0xCBF6, 0x5C72, 0xBE90, 0x29CBF3A1319B)
        _iiterable = try _queryInterfacePointer(iid).cast(to: __FIIterable_1___FIKeyValuePair_2_HSTRING_HSTRING.self)
        return _iiterable
    }

    public func first() throws -> WindowsFoundationCollections_IIterator<WindowsFoundationCollections_IKeyValuePair<Swift.String, Swift.String>?>? {
        let _this = try _getIIterable()
        var _result: UnsafeMutablePointer<__FIIterator_1___FIKeyValuePair_2_HSTRING_HSTRING>? = nil
        try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.First(_this, &_result))
        return WindowsFoundationCollections_IIteratorProjection.IKeyValuePair_String_String.toSwift(consuming: &_result)
    }

    // Windows.Foundation.Collections.IObservableMap`2<String, String>
    private var _iobservableMap: UnsafeMutablePointer<__FIObservableMap_2_HSTRING_HSTRING>! = nil

    private func _getIObservableMap() throws -> UnsafeMutablePointer<__FIObservableMap_2_HSTRING_HSTRING> {
        let iid = IID(0x1E036276, 0x2F60, 0x55F6, 0xB7F3, 0xF86079E6900B)
        _iobservableMap = try _queryInterfacePointer(iid).cast(to: __FIObservableMap_2_HSTRING_HSTRING.self)
        return _iobservableMap
    }

    deinit {
        if let _iiterable { IUnknownPointer.release(_iiterable) }
        if let _iobservableMap { IUnknownPointer.release(_iobservableMap) }
    }

    public required init(transferringRef comPointer: COMPointer) {
        super.init(transferringRef: comPointer)
    }

    // IActivationFactory
    private static var _iactivationFactory: UnsafeMutablePointer<IActivationFactory>! = nil

    private static func _getIActivationFactory() throws -> UnsafeMutablePointer<IActivationFactory> {
        let iid = IID(0x00000035, 0x0000, 0x0000, 0xC000, 0x000000000046)
        _iactivationFactory = try _iactivationFactory ?? WindowsRuntime.getActivationFactoryPointer(activatableId: "Windows.Foundation.Collections.StringMap", iid: iid)
        return _iactivationFactory
    }

    public convenience init() throws {
        let _factory = try Self._getIActivationFactory()
        var inspectable: UnsafeMutablePointer<CWindowsFoundation.IInspectable>? = nil
        defer { IUnknownPointer.release(inspectable) }
        try HResult.throwIfFailed(_factory.pointee.lpVtbl.pointee.ActivateInstance(_factory, &inspectable))
        guard let inspectable else { throw COM.HResult.Error.noInterface }

        var iid = Self.iid
        var instance: UnsafeMutableRawPointer? = nil
        try HResult.throwIfFailed(inspectable.pointee.lpVtbl.pointee.QueryInterface(inspectable, &iid, &instance))
        guard let instance else { throw COM.HResult.Error.noInterface }

        self.init(transferringRef: instance.bindMemory(to: COMInterface.self, capacity: 1))
    }
}