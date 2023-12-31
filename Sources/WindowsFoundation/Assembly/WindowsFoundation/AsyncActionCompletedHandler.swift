// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents a method that handles the completed event of an asynchronous action.
/// - Parameter asyncInfo: The asynchronous action.
/// - Parameter asyncStatus: One of the enumeration values.
public typealias WindowsFoundation_AsyncActionCompletedHandler = (WindowsFoundation_IAsyncAction?, WindowsFoundation_AsyncStatus) throws -> Swift.Void

public enum WindowsFoundation_AsyncActionCompletedHandlerProjection: COMTwoWayProjection {
    public typealias SwiftObject = WindowsFoundation_AsyncActionCompletedHandler
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIAsyncActionCompletedHandler
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIAsyncActionCompletedHandlerVtbl

    public static let iid = IID(0xA4ED5C81, 0x76C9, 0x40BD, 0x8BE6, 0xB1D90FB20AE7)

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

    private final class Implementation: COMImport<WindowsFoundation_AsyncActionCompletedHandlerProjection> {
        public func invoke(_ asyncInfo: WindowsFoundation_IAsyncAction?, _ asyncStatus: WindowsFoundation_AsyncStatus) throws {
            var asyncInfo = try WindowsFoundation_IAsyncActionProjection.toABI(asyncInfo)
            defer { WindowsFoundation_IAsyncActionProjection.release(&asyncInfo) }
            let asyncStatus = WindowsFoundation_AsyncStatus.toABI(asyncStatus)
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Invoke(comPointer, asyncInfo, asyncStatus))
        }
    }
}