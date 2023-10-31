// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

internal protocol WindowsFoundation_IDeferralProtocol: WindowsFoundation_IClosableProtocol {
    func complete() throws
}

internal typealias WindowsFoundation_IDeferral = any WindowsFoundation_IDeferralProtocol

internal final class WindowsFoundation_IDeferralProjection: WinRTProjectionBase<WindowsFoundation_IDeferralProjection>, WinRTProjection, WindowsFoundation_IDeferralProtocol {
    public typealias SwiftObject = WindowsFoundation_IDeferral
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIDeferral
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIDeferralVtbl

    public static let iid = IID(0xD6269732, 0x3B7F, 0x46A7, 0xB40B, 0x4FDCA2A2C693)
    public static let runtimeClassName = "Windows.Foundation.IDeferral"

    // Windows.Foundation.IDeferral
    public func complete() throws {
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Complete(comPointer))
    }

    // Windows.Foundation.IClosable
    private var _iclosable: UnsafeMutablePointer<__x_ABI_CWindows_CFoundation_CIClosable>! = nil

    private func _getIClosable() throws -> UnsafeMutablePointer<__x_ABI_CWindows_CFoundation_CIClosable> {
        let iid = IID(0x30D5A829, 0x7FA4, 0x4026, 0x83BB, 0xD75BAE4EA99E)
        _iclosable = try _queryInterfacePointer(iid).cast(to: __x_ABI_CWindows_CFoundation_CIClosable.self)
        return _iclosable
    }

    public func close() throws {
        let _this = try _getIClosable()
        try HResult.throwIfFailed(_this.pointee.lpVtbl.pointee.Close(_this))
    }

    deinit {
        if let _iclosable { IUnknownPointer.release(_iclosable) }
    }
}