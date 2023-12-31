// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents a method that handles the completed event of a deferred action.
public typealias WindowsFoundation_DeferralCompletedHandler = () throws -> Swift.Void

public enum WindowsFoundation_DeferralCompletedHandlerProjection: COMTwoWayProjection {
    public typealias SwiftObject = WindowsFoundation_DeferralCompletedHandler
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIDeferralCompletedHandler
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIDeferralCompletedHandlerVtbl

    public static let iid = IID(0xED32A372, 0xF3C8, 0x4FAA, 0x9CFB, 0x470148DA3888)

    public static var virtualTablePointer: COMVirtualTablePointer {
        fatalError("Not implemented: \(#function)")
    }

    public static func toSwift(transferringRef comPointer: COMPointer) -> SwiftObject {
        toSwift(transferringRef: comPointer, implementation: Implementation.self)
    }

    public static func toCOM(_ object: @escaping SwiftObject) throws -> COMPointer {
        let comExport = COMExport<Self>(implementation: object, queriableInterfaces: [ .init(Self.self) ])
        return IUnknownPointer.addingRef(comExport.pointer)
    }

    private final class Implementation: COMImport<WindowsFoundation_DeferralCompletedHandlerProjection> {
        public func invoke() throws {
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Invoke(comPointer))
        }
    }
}