// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

extension WindowsFoundation_AsyncStatus: WindowsRuntime.EnumProjection {
    public typealias CEnum = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CAsyncStatus
}

extension WindowsFoundation_DateTime: COM.ABIInertProjection {
    public typealias SwiftValue = Self
    public typealias ABIValue = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CDateTime

    public static var abiDefaultValue: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CDateTime {
        .init()
    }

    public static func toSwift(_ value: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CDateTime) -> Self {
        fatalError("Not implemented: \(#function)")
    }

    public static func toABI(_ value: Self) -> CWindowsFoundation.__x_ABI_CWindows_CFoundation_CDateTime {
        fatalError("Not implemented: \(#function)")
    }
}

public final class WindowsFoundation_Deferral: WinRTProjectionBase<WindowsFoundation_Deferral>, WinRTProjection {
    public typealias SwiftObject = WindowsFoundation_Deferral
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIDeferral
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIDeferralVtbl

    public static let iid = IID(0xD6269732, 0x3B7F, 0x46A7, 0xB40B, 0x4FDCA2A2C693)
    public static let runtimeClassName = "Windows.Foundation.Deferral"

    public func complete() throws {
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Complete(comPointer))
    }

    // IClosable

    private var _iclosable: UnsafeMutablePointer<__x_ABI_CWindows_CFoundation_CIClosable>! = nil

    private func _initIClosable() throws {
        guard _iclosable == nil else { return }
        _iclosable = try _queryInterfacePointer(IID(0x30D5A829, 0x7FA4, 0x4026, 0x83BB, 0xD75BAE4EA99E)).cast(to: __x_ABI_CWindows_CFoundation_CIClosable.self)
    }

    public func close() throws {
        try _initIClosable()
        try HResult.throwIfFailed(_iclosable.pointee.lpVtbl.pointee.Close(_iclosable))
    }

    deinit {
        if let _iclosable { IUnknownPointer.release(_iclosable) }
    }
}

public final class WindowsFoundation_IAsyncActionProjection: WinRTProjectionBase<WindowsFoundation_IAsyncActionProjection>, WinRTProjection, WindowsFoundation_IAsyncActionProtocol {
    public typealias SwiftObject = WindowsFoundation_IAsyncAction
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIAsyncAction
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIAsyncActionVtbl

    public static let iid = IID(0x5A648006, 0x843A, 0x4DA9, 0x865B, 0x9D26E5DFAD7B)
    public static let runtimeClassName = "Windows.Foundation.IAsyncAction"

    public var completed: WindowsFoundation_AsyncActionCompletedHandler {
        get throws {
            fatalError("Not implemented: \(#function)")
        }
    }

    public func completed(_ newValue: WindowsFoundation_AsyncActionCompletedHandler?) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getResults() throws {
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetResults(comPointer))
    }

    // IAsyncInfo

    private var _iasyncInfo: UnsafeMutablePointer<__x_ABI_CWindows_CFoundation_CIAsyncInfo>! = nil

    private func _initIAsyncInfo() throws {
        guard _iasyncInfo == nil else { return }
        _iasyncInfo = try _queryInterfacePointer(IID(0x00000036, 0x0000, 0x0000, 0xC000, 0x000000000046)).cast(to: __x_ABI_CWindows_CFoundation_CIAsyncInfo.self)
    }

    public var errorCode: COM.HResult {
        get throws {
            try _initIAsyncInfo()
            var _result: HRESULT = S_OK
            try HResult.throwIfFailed(_iasyncInfo.pointee.lpVtbl.pointee.get_ErrorCode(_iasyncInfo, &_result))
            return COM.HResultProjection.toSwift(consuming: _result)
        }
    }

    public var id: UInt32 {
        get throws {
            try _initIAsyncInfo()
            var _result: UINT32 = 0
            try HResult.throwIfFailed(_iasyncInfo.pointee.lpVtbl.pointee.get_Id(_iasyncInfo, &_result))
            return _result
        }
    }

    public var status: WindowsFoundation_AsyncStatus {
        get throws {
            try _initIAsyncInfo()
            var _result: __x_ABI_CWindows_CFoundation_CAsyncStatus = WindowsFoundation_AsyncStatus.abiDefaultValue
            try HResult.throwIfFailed(_iasyncInfo.pointee.lpVtbl.pointee.get_Status(_iasyncInfo, &_result))
            return WindowsFoundation_AsyncStatus.toSwift(consuming: _result)
        }
    }

    public func cancel() throws {
        try _initIAsyncInfo()
        try HResult.throwIfFailed(_iasyncInfo.pointee.lpVtbl.pointee.Cancel(_iasyncInfo))
    }

    public func close() throws {
        try _initIAsyncInfo()
        try HResult.throwIfFailed(_iasyncInfo.pointee.lpVtbl.pointee.Close(_iasyncInfo))
    }

    deinit {
        if let _iasyncInfo { IUnknownPointer.release(_iasyncInfo) }
    }
}

public final class WindowsFoundation_IAsyncInfoProjection: WinRTProjectionBase<WindowsFoundation_IAsyncInfoProjection>, WinRTProjection, WindowsFoundation_IAsyncInfoProtocol {
    public typealias SwiftObject = WindowsFoundation_IAsyncInfo
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIAsyncInfo
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIAsyncInfoVtbl

    public static let iid = IID(0x00000036, 0x0000, 0x0000, 0xC000, 0x000000000046)
    public static let runtimeClassName = "Windows.Foundation.IAsyncInfo"

    public var errorCode: COM.HResult {
        get throws {
            var _result: HRESULT = S_OK
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_ErrorCode(comPointer, &_result))
            return COM.HResultProjection.toSwift(consuming: _result)
        }
    }

    public var id: UInt32 {
        get throws {
            var _result: UINT32 = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_Id(comPointer, &_result))
            return _result
        }
    }

    public var status: WindowsFoundation_AsyncStatus {
        get throws {
            var _result: __x_ABI_CWindows_CFoundation_CAsyncStatus = WindowsFoundation_AsyncStatus.abiDefaultValue
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_Status(comPointer, &_result))
            return WindowsFoundation_AsyncStatus.toSwift(consuming: _result)
        }
    }

    public func cancel() throws {
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Cancel(comPointer))
    }

    public func close() throws {
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Close(comPointer))
    }
}

public final class WindowsFoundation_IClosableProjection: WinRTProjectionBase<WindowsFoundation_IClosableProjection>, WinRTProjection, WindowsFoundation_IClosableProtocol {
    public typealias SwiftObject = WindowsFoundation_IClosable
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIClosable
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIClosableVtbl

    public static let iid = IID(0x30D5A829, 0x7FA4, 0x4026, 0x83BB, 0xD75BAE4EA99E)
    public static let runtimeClassName = "Windows.Foundation.IClosable"

    public func close() throws {
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Close(comPointer))
    }
}

internal final class WindowsFoundation_IDeferralProjection: WinRTProjectionBase<WindowsFoundation_IDeferralProjection>, WinRTProjection, WindowsFoundation_IDeferralProtocol {
    public typealias SwiftObject = WindowsFoundation_IDeferral
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIDeferral
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIDeferralVtbl

    public static let iid = IID(0xD6269732, 0x3B7F, 0x46A7, 0xB40B, 0x4FDCA2A2C693)
    public static let runtimeClassName = "Windows.Foundation.IDeferral"

    public func complete() throws {
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.Complete(comPointer))
    }

    // IClosable

    private var _iclosable: UnsafeMutablePointer<__x_ABI_CWindows_CFoundation_CIClosable>! = nil

    private func _initIClosable() throws {
        guard _iclosable == nil else { return }
        _iclosable = try _queryInterfacePointer(IID(0x30D5A829, 0x7FA4, 0x4026, 0x83BB, 0xD75BAE4EA99E)).cast(to: __x_ABI_CWindows_CFoundation_CIClosable.self)
    }

    public func close() throws {
        try _initIClosable()
        try HResult.throwIfFailed(_iclosable.pointee.lpVtbl.pointee.Close(_iclosable))
    }

    deinit {
        if let _iclosable { IUnknownPointer.release(_iclosable) }
    }
}

public final class WindowsFoundation_IPropertyValueProjection: WinRTProjectionBase<WindowsFoundation_IPropertyValueProjection>, WinRTProjection, WindowsFoundation_IPropertyValueProtocol {
    public typealias SwiftObject = WindowsFoundation_IPropertyValue
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIPropertyValue
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIPropertyValueVtbl

    public static let iid = IID(0x4BD682DD, 0x7554, 0x40E9, 0x9A9B, 0x82654EDE7E62)
    public static let runtimeClassName = "Windows.Foundation.IPropertyValue"

    public var isNumericScalar: Bool {
        get throws {
            var _result: boolean = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_IsNumericScalar(comPointer, &_result))
            return COM.BooleanProjection.toSwift(consuming: _result)
        }
    }

    public var type: WindowsFoundation_PropertyType {
        get throws {
            var _result: __x_ABI_CWindows_CFoundation_CPropertyType = WindowsFoundation_PropertyType.abiDefaultValue
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_Type(comPointer, &_result))
            return WindowsFoundation_PropertyType.toSwift(consuming: _result)
        }
    }

    public func getUInt8() throws -> UInt8 {
        var _result: UINT8 = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt8(comPointer, &_result))
        return _result
    }

    public func getInt16() throws -> Int16 {
        var _result: INT16 = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInt16(comPointer, &_result))
        return _result
    }

    public func getUInt16() throws -> UInt16 {
        var _result: UINT16 = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt16(comPointer, &_result))
        return _result
    }

    public func getInt32() throws -> Int32 {
        var _result: INT32 = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInt32(comPointer, &_result))
        return _result
    }

    public func getUInt32() throws -> UInt32 {
        var _result: UINT32 = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt32(comPointer, &_result))
        return _result
    }

    public func getInt64() throws -> Int64 {
        var _result: INT64 = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInt64(comPointer, &_result))
        return _result
    }

    public func getUInt64() throws -> UInt64 {
        var _result: UINT64 = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt64(comPointer, &_result))
        return _result
    }

    public func getSingle() throws -> Float {
        var _result: FLOAT = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetSingle(comPointer, &_result))
        return _result
    }

    public func getDouble() throws -> Double {
        var _result: DOUBLE = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetDouble(comPointer, &_result))
        return _result
    }

    public func getChar16() throws -> COM.WideChar {
        var _result: WCHAR = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetChar16(comPointer, &_result))
        return COM.WideChar.toSwift(consuming: _result)
    }

    public func getBoolean() throws -> Bool {
        var _result: boolean = 0
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetBoolean(comPointer, &_result))
        return COM.BooleanProjection.toSwift(consuming: _result)
    }

    public func getString() throws -> String {
        var _result: HSTRING? = nil
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetString(comPointer, &_result))
        return HStringProjection.toSwift(consuming: _result)
    }

    public func getGuid() throws -> Foundation.UUID {
        var _result: GUID = COM.GUIDProjection.abiDefaultValue
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetGuid(comPointer, &_result))
        return COM.GUIDProjection.toSwift(consuming: _result)
    }

    public func getDateTime() throws -> WindowsFoundation_DateTime {
        var _result: __x_ABI_CWindows_CFoundation_CDateTime = WindowsFoundation_DateTime.abiDefaultValue
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetDateTime(comPointer, &_result))
        return WindowsFoundation_DateTime.toSwift(consuming: _result)
    }

    public func getTimeSpan() throws -> WindowsFoundation_TimeSpan {
        var _result: __x_ABI_CWindows_CFoundation_CTimeSpan = WindowsFoundation_TimeSpan.abiDefaultValue
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetTimeSpan(comPointer, &_result))
        return WindowsFoundation_TimeSpan.toSwift(consuming: _result)
    }

    public func getPoint() throws -> WindowsFoundation_Point {
        var _result: __x_ABI_CWindows_CFoundation_CPoint = WindowsFoundation_Point.abiDefaultValue
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetPoint(comPointer, &_result))
        return WindowsFoundation_Point.toSwift(consuming: _result)
    }

    public func getSize() throws -> WindowsFoundation_Size {
        var _result: __x_ABI_CWindows_CFoundation_CSize = WindowsFoundation_Size.abiDefaultValue
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetSize(comPointer, &_result))
        return WindowsFoundation_Size.toSwift(consuming: _result)
    }

    public func getRect() throws -> WindowsFoundation_Rect {
        var _result: __x_ABI_CWindows_CFoundation_CRect = WindowsFoundation_Rect.abiDefaultValue
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetRect(comPointer, &_result))
        return WindowsFoundation_Rect.toSwift(consuming: _result)
    }

    public func getUInt8Array(_ value: inout [UInt8]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getInt16Array(_ value: inout [Int16]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getUInt16Array(_ value: inout [UInt16]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getInt32Array(_ value: inout [Int32]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getUInt32Array(_ value: inout [UInt32]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getInt64Array(_ value: inout [Int64]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getUInt64Array(_ value: inout [UInt64]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getSingleArray(_ value: inout [Float]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getDoubleArray(_ value: inout [Double]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getChar16Array(_ value: inout [COM.WideChar]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getBooleanArray(_ value: inout [Bool]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getStringArray(_ value: inout [String]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getInspectableArray(_ value: inout [WindowsRuntime.IInspectable?]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getGuidArray(_ value: inout [Foundation.UUID]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getDateTimeArray(_ value: inout [WindowsFoundation_DateTime]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getTimeSpanArray(_ value: inout [WindowsFoundation_TimeSpan]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getPointArray(_ value: inout [WindowsFoundation_Point]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getSizeArray(_ value: inout [WindowsFoundation_Size]) throws {
        fatalError("Not implemented: \(#function)")
    }

    public func getRectArray(_ value: inout [WindowsFoundation_Rect]) throws {
        fatalError("Not implemented: \(#function)")
    }
}

public final class WindowsFoundation_IStringableProjection: WinRTProjectionBase<WindowsFoundation_IStringableProjection>, WinRTProjection, WindowsFoundation_IStringableProtocol {
    public typealias SwiftObject = WindowsFoundation_IStringable
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIStringable
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIStringableVtbl

    public static let iid = IID(0x96369F54, 0x8EB6, 0x48F0, 0xABCE, 0xC1B211E627C3)
    public static let runtimeClassName = "Windows.Foundation.IStringable"

    public func toString() throws -> String {
        var _result: HSTRING? = nil
        try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.ToString(comPointer, &_result))
        return HStringProjection.toSwift(consuming: _result)
    }
}

extension WindowsFoundation_Point: COM.ABIInertProjection {
    public typealias SwiftValue = Self
    public typealias ABIValue = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CPoint

    public static var abiDefaultValue: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CPoint {
        .init()
    }

    public static func toSwift(_ value: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CPoint) -> Self {
        fatalError("Not implemented: \(#function)")
    }

    public static func toABI(_ value: Self) -> CWindowsFoundation.__x_ABI_CWindows_CFoundation_CPoint {
        fatalError("Not implemented: \(#function)")
    }
}

extension WindowsFoundation_PropertyType: WindowsRuntime.EnumProjection {
    public typealias CEnum = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CPropertyType
}

public final class WindowsFoundation_PropertyValue {
    public static let runtimeClassName = "Windows.Foundation.PropertyValue"

    private init() {
    }

    private static var _ipropertyValueStatics: UnsafeMutablePointer<__x_ABI_CWindows_CFoundation_CIPropertyValueStatics>! = nil

    private static func _initIPropertyValueStatics() throws {
        guard _ipropertyValueStatics == nil else { return }
        _ipropertyValueStatics = try WindowsRuntime.ActivationFactory.getPointer(activatableId: runtimeClassName, iid: IID(0x629BDBC8, 0xD932, 0x4FF4, 0x96B9, 0x8D96C5C1E858))
    }

    public static func createEmpty() throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateEmpty(_ipropertyValueStatics, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createUInt8(_ value: UInt8) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateUInt8(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createInt16(_ value: Int16) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateInt16(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createUInt16(_ value: UInt16) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateUInt16(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createInt32(_ value: Int32) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateInt32(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createUInt32(_ value: UInt32) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateUInt32(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createInt64(_ value: Int64) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateInt64(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createUInt64(_ value: UInt64) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateUInt64(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createSingle(_ value: Float) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateSingle(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createDouble(_ value: Double) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateDouble(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createChar16(_ value: COM.WideChar) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = COM.WideChar.toABI(value)
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateChar16(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createBoolean(_ value: Bool) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = COM.BooleanProjection.toABI(value)
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateBoolean(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createString(_ value: String) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = try HStringProjection.toABI(value)
        defer { HStringProjection.release(value) }
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateString(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createInspectable(_ value: WindowsRuntime.IInspectable?) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = try IInspectableProjection.toABI(value)
        defer { IInspectableProjection.release(value) }
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateInspectable(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createGuid(_ value: Foundation.UUID) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = COM.GUIDProjection.toABI(value)
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateGuid(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createDateTime(_ value: WindowsFoundation_DateTime) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = WindowsFoundation_DateTime.toABI(value)
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateDateTime(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createTimeSpan(_ value: WindowsFoundation_TimeSpan) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = WindowsFoundation_TimeSpan.toABI(value)
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateTimeSpan(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createPoint(_ value: WindowsFoundation_Point) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = WindowsFoundation_Point.toABI(value)
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreatePoint(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createSize(_ value: WindowsFoundation_Size) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = WindowsFoundation_Size.toABI(value)
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateSize(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createRect(_ value: WindowsFoundation_Rect) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        let value = WindowsFoundation_Rect.toABI(value)
        var _result: IInspectableProjection.COMPointer? = nil
        try HResult.throwIfFailed(_ipropertyValueStatics.pointee.lpVtbl.pointee.CreateRect(_ipropertyValueStatics, value, &_result))
        return IInspectableProjection.toSwift(consuming: _result)
    }

    public static func createUInt8Array(_ value: [UInt8]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createInt16Array(_ value: [Int16]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createUInt16Array(_ value: [UInt16]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createInt32Array(_ value: [Int32]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createUInt32Array(_ value: [UInt32]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createInt64Array(_ value: [Int64]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createUInt64Array(_ value: [UInt64]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createSingleArray(_ value: [Float]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createDoubleArray(_ value: [Double]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createChar16Array(_ value: [COM.WideChar]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createBooleanArray(_ value: [Bool]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createStringArray(_ value: [String]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createInspectableArray(_ value: [WindowsRuntime.IInspectable?]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createGuidArray(_ value: [Foundation.UUID]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createDateTimeArray(_ value: [WindowsFoundation_DateTime]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createTimeSpanArray(_ value: [WindowsFoundation_TimeSpan]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createPointArray(_ value: [WindowsFoundation_Point]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createSizeArray(_ value: [WindowsFoundation_Size]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }

    public static func createRectArray(_ value: [WindowsFoundation_Rect]) throws -> WindowsRuntime.IInspectable? {
        try _initIPropertyValueStatics()
        fatalError("Not implemented: \(#function)")
    }
}

extension WindowsFoundation_Rect: COM.ABIInertProjection {
    public typealias SwiftValue = Self
    public typealias ABIValue = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CRect

    public static var abiDefaultValue: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CRect {
        .init()
    }

    public static func toSwift(_ value: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CRect) -> Self {
        fatalError("Not implemented: \(#function)")
    }

    public static func toABI(_ value: Self) -> CWindowsFoundation.__x_ABI_CWindows_CFoundation_CRect {
        fatalError("Not implemented: \(#function)")
    }
}

extension WindowsFoundation_Size: COM.ABIInertProjection {
    public typealias SwiftValue = Self
    public typealias ABIValue = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CSize

    public static var abiDefaultValue: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CSize {
        .init()
    }

    public static func toSwift(_ value: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CSize) -> Self {
        fatalError("Not implemented: \(#function)")
    }

    public static func toABI(_ value: Self) -> CWindowsFoundation.__x_ABI_CWindows_CFoundation_CSize {
        fatalError("Not implemented: \(#function)")
    }
}

extension WindowsFoundation_TimeSpan: COM.ABIInertProjection {
    public typealias SwiftValue = Self
    public typealias ABIValue = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CTimeSpan

    public static var abiDefaultValue: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CTimeSpan {
        .init()
    }

    public static func toSwift(_ value: CWindowsFoundation.__x_ABI_CWindows_CFoundation_CTimeSpan) -> Self {
        fatalError("Not implemented: \(#function)")
    }

    public static func toABI(_ value: Self) -> CWindowsFoundation.__x_ABI_CWindows_CFoundation_CTimeSpan {
        fatalError("Not implemented: \(#function)")
    }
}