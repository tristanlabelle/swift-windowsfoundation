// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

extension WindowsFoundationCollections_IMapViewProjection {
    public enum String_Object: WinRTTwoWayProjection {
        public typealias SwiftObject = WindowsFoundationCollections_IMapView<Swift.String, WindowsRuntime.IInspectable?>
        public typealias COMInterface = CWindowsFoundation.__FIMapView_2_HSTRING_IInspectable
        public typealias COMVirtualTable = CWindowsFoundation.__FIMapView_2_HSTRING_IInspectableVtbl

        public static let iid = IID(0xBB78502A, 0xF79D, 0x54FA, 0x92C9, 0x90C5039FDF7E)

        public static var virtualTablePointer: COMVirtualTablePointer {
            fatalError("Not implemented: \(#function)")
        }

        public static let runtimeClassName = "Windows.Foundation.Collections.IMapView`2<String, Object>"

        public static func toSwift(transferringRef comPointer: COMPointer) -> SwiftObject {
            toSwift(transferringRef: comPointer, implementation: Implementation.self)
        }

        public static func toCOM(_ object: SwiftObject) throws -> COMPointer {
            try toCOM(object, implementation: Implementation.self)
        }

        private final class Implementation: WinRTImport<String_Object>, WindowsFoundationCollections_IMapViewProtocol {
            public typealias T = WindowsFoundationCollections_IKeyValuePair<Swift.String, WindowsRuntime.IInspectable?>?

            // Windows.Foundation.Collections.IMapView`2<String, Object>
            public var size: Swift.UInt32 {
                get throws {
                    var _result: UINT32 = 0
                    try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_Size(comPointer, &_result))
                    return _result
                }
            }

            public func lookup(_ key: Swift.String) throws -> WindowsRuntime.IInspectable? {
                var key = try WindowsRuntime.HStringProjection.toABI(key)
                defer { WindowsRuntime.HStringProjection.release(&key) }
                var _result: IInspectableProjection.COMPointer? = nil
                try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Lookup(comPointer, key, &_result))
                return WindowsRuntime.IInspectableProjection.toSwift(consuming: &_result)
            }

            public func hasKey(_ key: Swift.String) throws -> Swift.Bool {
                var key = try WindowsRuntime.HStringProjection.toABI(key)
                defer { WindowsRuntime.HStringProjection.release(&key) }
                var _result: boolean = 0
                try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.HasKey(comPointer, key, &_result))
                return COM.BooleanProjection.toSwift(_result)
            }

            public func split(_ first: inout WindowsFoundationCollections_IMapView<Swift.String, WindowsRuntime.IInspectable?>?, _ second: inout WindowsFoundationCollections_IMapView<Swift.String, WindowsRuntime.IInspectable?>?) throws {
                var _first: UnsafeMutablePointer<__FIMapView_2_HSTRING_IInspectable>? = nil
                defer { WindowsFoundationCollections_IMapViewProjection.String_Object.release(&_first) }
                var _second: UnsafeMutablePointer<__FIMapView_2_HSTRING_IInspectable>? = nil
                defer { WindowsFoundationCollections_IMapViewProjection.String_Object.release(&_second) }
                try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Split(comPointer, &_first, &_second))
                first = WindowsFoundationCollections_IMapViewProjection.String_Object.toSwift(consuming: &_first)
                second = WindowsFoundationCollections_IMapViewProjection.String_Object.toSwift(consuming: &_second)
            }

            // Windows.Foundation.Collections.IIterable`1<Windows.Foundation.Collections.IKeyValuePair`2<String, Object>>
            private var _iiterable: UnsafeMutablePointer<__FIIterable_1___FIKeyValuePair_2_HSTRING_IInspectable>? = nil

            private func _getIIterable() throws -> UnsafeMutablePointer<__FIIterable_1___FIKeyValuePair_2_HSTRING_IInspectable> {
                if let existing = _iiterable { return existing }
                let iid = IID(0xFE2F3D47, 0x5D47, 0x5499, 0x8374, 0x430C7CDA0204)
                let new = try _queryInterfacePointer(iid).cast(to: __FIIterable_1___FIKeyValuePair_2_HSTRING_IInspectable.self)
                _iiterable = new
                return new
            }

            public func first() throws -> WindowsFoundationCollections_IIterator<WindowsFoundationCollections_IKeyValuePair<Swift.String, WindowsRuntime.IInspectable?>?>? {
                let _this = try _getIIterable()
                var _result: UnsafeMutablePointer<__FIIterator_1___FIKeyValuePair_2_HSTRING_IInspectable>? = nil
                try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.First(_this, &_result))
                return WindowsFoundationCollections_IIteratorProjection.IKeyValuePair_String_Object.toSwift(consuming: &_result)
            }

            deinit {
                if let _iiterable { IUnknownPointer.release(_iiterable) }
            }
        }
    }
}