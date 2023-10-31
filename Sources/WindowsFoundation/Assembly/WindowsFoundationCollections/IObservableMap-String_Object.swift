// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

extension WindowsFoundationCollections_IObservableMapProjection {
    public final class String_Object: WinRTProjectionBase<String_Object>, WinRTProjection, WindowsFoundationCollections_IObservableMapProtocol {
        public typealias SwiftObject = WindowsFoundationCollections_IObservableMap<Swift.String, WindowsRuntime.IInspectable?>
        public typealias COMInterface = CWindowsFoundation.__FIObservableMap_2_HSTRING_IInspectable
        public typealias COMVirtualTable = CWindowsFoundation.__FIObservableMap_2_HSTRING_IInspectableVtbl

        public static let iid = IID(0x236AAC9D, 0xFB12, 0x5C4D, 0xA41C, 0x9E445FB4D7EC)
        public static let runtimeClassName = "Windows.Foundation.Collections.IObservableMap`2<String, Object>"

        public typealias K = Swift.String
        public typealias V = WindowsRuntime.IInspectable?

        // Windows.Foundation.Collections.IObservableMap`2<String, Object>
        // Windows.Foundation.Collections.IMap`2<String, Object>
        private var _imap: UnsafeMutablePointer<__FIMap_2_HSTRING_IInspectable>! = nil

        private func _getIMap() throws -> UnsafeMutablePointer<__FIMap_2_HSTRING_IInspectable> {
            let iid = IID(0x1B0D3570, 0x0877, 0x5EC2, 0x8A2C, 0x3B9539506ACA)
            _imap = try _queryInterfacePointer(iid).cast(to: __FIMap_2_HSTRING_IInspectable.self)
            return _imap
        }

        public var size: Swift.UInt32 {
            get throws {
                let _this = try _getIMap()
                var _result: UINT32 = 0
                try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.get_Size(_this, &_result))
                return _result
            }
        }

        public func lookup(_ key: Swift.String) throws -> WindowsRuntime.IInspectable? {
            let _this = try _getIMap()
            var key = try WindowsRuntime.HStringProjection.toABI(key)
            defer { WindowsRuntime.HStringProjection.release(&key) }
            var _result: IInspectableProjection.COMPointer? = nil
            try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.Lookup(_this, key, &_result))
            return WindowsRuntime.IInspectableProjection.toSwift(consuming: &_result)
        }

        public func hasKey(_ key: Swift.String) throws -> Swift.Bool {
            let _this = try _getIMap()
            var key = try WindowsRuntime.HStringProjection.toABI(key)
            defer { WindowsRuntime.HStringProjection.release(&key) }
            var _result: boolean = 0
            try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.HasKey(_this, key, &_result))
            return COM.BooleanProjection.toSwift(_result)
        }

        public func getView() throws -> WindowsFoundationCollections_IMapView<Swift.String, WindowsRuntime.IInspectable?>? {
            let _this = try _getIMap()
            var _result: UnsafeMutablePointer<__FIMapView_2_HSTRING_IInspectable>? = nil
            try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.GetView(_this, &_result))
            return WindowsFoundationCollections_IMapViewProjection.String_Object.toSwift(consuming: &_result)
        }

        public func insert(_ key: Swift.String, _ value: WindowsRuntime.IInspectable?) throws -> Swift.Bool {
            let _this = try _getIMap()
            var key = try WindowsRuntime.HStringProjection.toABI(key)
            defer { WindowsRuntime.HStringProjection.release(&key) }
            var value = try WindowsRuntime.IInspectableProjection.toABI(value)
            defer { WindowsRuntime.IInspectableProjection.release(&value) }
            var _result: boolean = 0
            try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.Insert(_this, key, value, &_result))
            return COM.BooleanProjection.toSwift(_result)
        }

        public func remove(_ key: Swift.String) throws {
            let _this = try _getIMap()
            var key = try WindowsRuntime.HStringProjection.toABI(key)
            defer { WindowsRuntime.HStringProjection.release(&key) }
            try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.Remove(_this, key))
        }

        public func clear() throws {
            let _this = try _getIMap()
            try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.Clear(_this))
        }

        // Windows.Foundation.Collections.IIterable`1<Windows.Foundation.Collections.IKeyValuePair`2<String, Object>>
        private var _iiterable: UnsafeMutablePointer<__FIIterable_1___FIKeyValuePair_2_HSTRING_IInspectable>! = nil

        private func _getIIterable() throws -> UnsafeMutablePointer<__FIIterable_1___FIKeyValuePair_2_HSTRING_IInspectable> {
            let iid = IID(0xFE2F3D47, 0x5D47, 0x5499, 0x8374, 0x430C7CDA0204)
            _iiterable = try _queryInterfacePointer(iid).cast(to: __FIIterable_1___FIKeyValuePair_2_HSTRING_IInspectable.self)
            return _iiterable
        }

        public func first() throws -> WindowsFoundationCollections_IIterator<WindowsFoundationCollections_IKeyValuePair<Swift.String, WindowsRuntime.IInspectable?>?>? {
            let _this = try _getIIterable()
            var _result: UnsafeMutablePointer<__FIIterator_1___FIKeyValuePair_2_HSTRING_IInspectable>? = nil
            try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.First(_this, &_result))
            return WindowsFoundationCollections_IIteratorProjection.IKeyValuePair_String_Object.toSwift(consuming: &_result)
        }

        deinit {
            if let _imap { IUnknownPointer.release(_imap) }
            if let _iiterable { IUnknownPointer.release(_iiterable) }
        }
    }
}