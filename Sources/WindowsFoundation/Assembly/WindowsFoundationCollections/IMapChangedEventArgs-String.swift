// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

extension WindowsFoundationCollections_IMapChangedEventArgsProjection {
    public enum String: WinRTTwoWayProjection {
        public typealias SwiftObject = WindowsFoundationCollections_IMapChangedEventArgs<Swift.String>
        public typealias COMInterface = CWindowsFoundation.__FIMapChangedEventArgs_1_HSTRING
        public typealias COMVirtualTable = CWindowsFoundation.__FIMapChangedEventArgs_1_HSTRINGVtbl

        public static let iid = IID(0x60141EFB, 0xF2F9, 0x5377, 0x96FD, 0xF8C60D9558B5)

        public static var virtualTablePointer: COMVirtualTablePointer {
            fatalError("Not implemented: \(#function)")
        }

        public static let runtimeClassName = "Windows.Foundation.Collections.IMapChangedEventArgs`1<String>"

        public static func toSwift(transferringRef comPointer: COMPointer) -> SwiftObject {
            toSwift(transferringRef: comPointer, implementation: Implementation.self)
        }

        public static func toCOM(_ object: SwiftObject) throws -> COMPointer {
            try toCOM(object, implementation: Implementation.self)
        }

        private final class Implementation: WinRTImport<String>, WindowsFoundationCollections_IMapChangedEventArgsProtocol {
            // Windows.Foundation.Collections.IMapChangedEventArgs`1<String>
            public var collectionChange: WindowsFoundationCollections_CollectionChange {
                get throws {
                    var _result: __x_ABI_CWindows_CFoundation_CCollections_CCollectionChange = WindowsFoundationCollections_CollectionChange.abiDefaultValue
                    try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_CollectionChange(comPointer, &_result))
                    return WindowsFoundationCollections_CollectionChange.toSwift(_result)
                }
            }

            public var key: Swift.String {
                get throws {
                    var _result: CWindowsFoundation.HSTRING? = nil
                    try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_Key(comPointer, &_result))
                    return WindowsRuntime.HStringProjection.toSwift(consuming: &_result)
                }
            }
        }
    }
}