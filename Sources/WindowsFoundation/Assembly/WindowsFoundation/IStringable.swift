// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Provides a way to represent the current object as a string.
public protocol WindowsFoundation_IStringableProtocol: IInspectableProtocol {
    /// Gets a string that represents the current object.
    /// - Returns: A string that represents the current object.
    func toString() throws -> Swift.String
}

/// Provides a way to represent the current object as a string.
public typealias WindowsFoundation_IStringable = any WindowsFoundation_IStringableProtocol

public enum WindowsFoundation_IStringableProjection: WinRTTwoWayProjection {
    public typealias SwiftObject = WindowsFoundation_IStringable
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIStringable
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIStringableVtbl

    public static let iid = IID(0x96369F54, 0x8EB6, 0x48F0, 0xABCE, 0xC1B211E627C3)

    public static var virtualTablePointer: COMVirtualTablePointer {
        fatalError("Not implemented: \(#function)")
    }

    public static let runtimeClassName = "Windows.Foundation.IStringable"

    public static func toSwift(transferringRef comPointer: COMPointer) -> SwiftObject {
        toSwift(transferringRef: comPointer, implementation: Implementation.self)
    }

    public static func toCOM(_ object: SwiftObject) throws -> COMPointer {
        try toCOM(object, implementation: Implementation.self)
    }

    private final class Implementation: WinRTImport<WindowsFoundation_IStringableProjection>, WindowsFoundation_IStringableProtocol {
        // Windows.Foundation.IStringable
        public func toString() throws -> Swift.String {
            var _result: CWindowsFoundation.HSTRING? = nil
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.ToString(comPointer, &_result))
            return WindowsRuntime.HStringProjection.toSwift(consuming: &_result)
        }
    }
}