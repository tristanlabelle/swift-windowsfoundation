// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

extension WindowsFoundationCollections_IIterableProjection {
    public enum IKeyValuePair_String_String: WinRTTwoWayProjection {
        public typealias SwiftObject = WindowsFoundationCollections_IIterable<WindowsFoundationCollections_IKeyValuePair<Swift.String, Swift.String>?>
        public typealias COMInterface = CWindowsFoundation.__FIIterable_1___FIKeyValuePair_2_HSTRING_HSTRING
        public typealias COMVirtualTable = CWindowsFoundation.__FIIterable_1___FIKeyValuePair_2_HSTRING_HSTRINGVtbl

        public static let iid = IID(0xE9BDAAF0, 0xCBF6, 0x5C72, 0xBE90, 0x29CBF3A1319B)

        public static var virtualTablePointer: COMVirtualTablePointer {
            fatalError("Not implemented: \(#function)")
        }

        public static let runtimeClassName = "Windows.Foundation.Collections.IIterable`1<Windows.Foundation.Collections.IKeyValuePair`2<String, String>>"

        public static func toSwift(transferringRef comPointer: COMPointer) -> SwiftObject {
            toSwift(transferringRef: comPointer, implementation: Implementation.self)
        }

        public static func toCOM(_ object: SwiftObject) throws -> COMPointer {
            try toCOM(object, implementation: Implementation.self)
        }

        private final class Implementation: WinRTImport<IKeyValuePair_String_String>, WindowsFoundationCollections_IIterableProtocol {
            // Windows.Foundation.Collections.IIterable`1<Windows.Foundation.Collections.IKeyValuePair`2<String, String>>
            public func first() throws -> WindowsFoundationCollections_IIterator<WindowsFoundationCollections_IKeyValuePair<Swift.String, Swift.String>?>? {
                var _result: UnsafeMutablePointer<__FIIterator_1___FIKeyValuePair_2_HSTRING_HSTRING>? = nil
                try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.First(comPointer, &_result))
                return WindowsFoundationCollections_IIteratorProjection.IKeyValuePair_String_String.toSwift(consuming: &_result)
            }
        }
    }
}