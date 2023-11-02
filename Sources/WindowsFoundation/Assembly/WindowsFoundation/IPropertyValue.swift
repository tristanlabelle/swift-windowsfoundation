// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Represents a value in a property store. You can't implement this interface, see Remarks.
public protocol WindowsFoundation_IPropertyValueProtocol: IInspectableProtocol {
    /// Gets a value that indicates whether the property value is a scalar value.
    /// - Returns: True if the value is scalar; otherwise false.
    var isNumericScalar: Swift.Bool { get throws }

    /// Returns the type stored in the property value.
    /// - Returns: The type stored in the property value.
    var type: WindowsFoundation_PropertyType { get throws }

    /// Returns the byte value stored as a property value.
    /// - Returns: The value.
    func getUInt8() throws -> Swift.UInt8

    /// Returns the integer value stored as a property value.
    /// - Returns: The value.
    func getInt16() throws -> Swift.Int16

    /// Returns the unsigned integer value stored as a property value.
    /// - Returns: The value.
    func getUInt16() throws -> Swift.UInt16

    /// Returns the integer value stored as a property value.
    /// - Returns: The value.
    func getInt32() throws -> Swift.Int32

    /// Returns the unsigned integer value stored as a property value.
    /// - Returns: The value.
    func getUInt32() throws -> Swift.UInt32

    /// Returns the integer value stored as a property value.
    /// - Returns: The value.
    func getInt64() throws -> Swift.Int64

    /// Returns the unsigned integer value stored as a property value.
    /// - Returns: The value.
    func getUInt64() throws -> Swift.UInt64

    /// Returns the floating-point value stored as a property value.
    /// - Returns: The value.
    func getSingle() throws -> Swift.Float

    /// Returns the floating-point value stored as a property value.
    /// - Returns: The value.
    func getDouble() throws -> Swift.Double

    /// Returns the Unicode character stored as a property value.
    /// - Returns: The value.
    func getChar16() throws -> COM.WideChar

    /// Returns the Boolean value stored as a property value.
    /// - Returns: The value.
    func getBoolean() throws -> Swift.Bool

    /// Returns the string value stored as a property value.
    /// - Returns: The value.
    func getString() throws -> Swift.String

    /// Returns the GUID value stored as a property value.
    /// - Returns: The value.
    func getGuid() throws -> Foundation.UUID

    /// Returns the date and time value stored as a property value.
    /// - Returns: The value.
    func getDateTime() throws -> WindowsFoundation_DateTime

    /// Returns the time interval value stored as a property value.
    /// - Returns: The value.
    func getTimeSpan() throws -> WindowsFoundation_TimeSpan

    /// Returns the point structure stored as a property value.
    /// - Returns: The structure.
    func getPoint() throws -> WindowsFoundation_Point

    /// Returns the size structure stored as a property value.
    /// - Returns: The structure.
    func getSize() throws -> WindowsFoundation_Size

    /// Returns the rectangle structure stored as a property value.
    /// - Returns: The structure.
    func getRect() throws -> WindowsFoundation_Rect

    /// Returns the array of byte values stored as a property value.
    /// - Parameter value: The array of values.
    func getUInt8Array(_ value: inout [Swift.UInt8]) throws

    /// Returns the array of integer values stored as a property value.
    /// - Parameter value: The array of values.
    func getInt16Array(_ value: inout [Swift.Int16]) throws

    /// Returns the array of unsigned integer values stored as a property value.
    /// - Parameter value: The array of values.
    func getUInt16Array(_ value: inout [Swift.UInt16]) throws

    /// Returns the array of integer values stored as a property value.
    /// - Parameter value: The array of values.
    func getInt32Array(_ value: inout [Swift.Int32]) throws

    /// Returns the array of unsigned integer values stored as a property value.
    /// - Parameter value: The array of values.
    func getUInt32Array(_ value: inout [Swift.UInt32]) throws

    /// Returns the array of integer values stored as a property value.
    /// - Parameter value: The array of values.
    func getInt64Array(_ value: inout [Swift.Int64]) throws

    /// Returns the array of unsigned integer values stored as a property value.
    /// - Parameter value: The array of values.
    func getUInt64Array(_ value: inout [Swift.UInt64]) throws

    /// Returns the array of floating-point values stored as a property value.
    /// - Parameter value: The array of values.
    func getSingleArray(_ value: inout [Swift.Float]) throws

    /// Returns the array of floating-point values stored as a property value.
    /// - Parameter value: The array of values.
    func getDoubleArray(_ value: inout [Swift.Double]) throws

    /// Returns the array of Unicode characters stored as a property value.
    /// - Parameter value: The array of values.
    func getChar16Array(_ value: inout [COM.WideChar]) throws

    /// Returns the array of Boolean values stored as a property value.
    /// - Parameter value: The array of values.
    func getBooleanArray(_ value: inout [Swift.Bool]) throws

    /// Returns the array of string values stored as a property value.
    /// - Parameter value: The array of values.
    func getStringArray(_ value: inout [Swift.String]) throws

    /// Returns the array of inspectable objects stored as a property value.
    /// - Parameter value: The array of objects.
    func getInspectableArray(_ value: inout [WindowsRuntime.IInspectable?]) throws

    /// Returns the array of GUID values stored as a property value.
    /// - Parameter value: The array of values.
    func getGuidArray(_ value: inout [Foundation.UUID]) throws

    /// Returns the array of date and time values stored as a property value.
    /// - Parameter value: The array of values.
    func getDateTimeArray(_ value: inout [WindowsFoundation_DateTime]) throws

    /// Returns the array of time interval values stored as a property value.
    /// - Parameter value: The array of values.
    func getTimeSpanArray(_ value: inout [WindowsFoundation_TimeSpan]) throws

    /// Returns the array of point structures stored as a property value.
    /// - Parameter value: The array of structures.
    func getPointArray(_ value: inout [WindowsFoundation_Point]) throws

    /// Returns the array of size structures stored as a property value.
    /// - Parameter value: The array of structures.
    func getSizeArray(_ value: inout [WindowsFoundation_Size]) throws

    /// Returns the array of rectangle structures stored as a property value.
    /// - Parameter value: The array of structures.
    func getRectArray(_ value: inout [WindowsFoundation_Rect]) throws
}

/// Represents a value in a property store. You can't implement this interface, see Remarks.
public typealias WindowsFoundation_IPropertyValue = any WindowsFoundation_IPropertyValueProtocol

public enum WindowsFoundation_IPropertyValueProjection: WinRTTwoWayProjection {
    public typealias SwiftObject = WindowsFoundation_IPropertyValue
    public typealias COMInterface = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIPropertyValue
    public typealias COMVirtualTable = CWindowsFoundation.__x_ABI_CWindows_CFoundation_CIPropertyValueVtbl

    public static let iid = IID(0x4BD682DD, 0x7554, 0x40E9, 0x9A9B, 0x82654EDE7E62)

    public static var virtualTablePointer: COMVirtualTablePointer {
        fatalError("Not implemented: \(#function)")
    }

    public static let runtimeClassName = "Windows.Foundation.IPropertyValue"

    public static func toSwift(transferringRef comPointer: COMPointer) -> SwiftObject {
        toSwift(transferringRef: comPointer, implementation: Implementation.self)
    }

    public static func toCOM(_ object: SwiftObject) throws -> COMPointer {
        try toCOM(object, implementation: Implementation.self)
    }

    private final class Implementation: WinRTImport<WindowsFoundation_IPropertyValueProjection>, WindowsFoundation_IPropertyValueProtocol {
        // Windows.Foundation.IPropertyValue
        public var isNumericScalar: Swift.Bool {
            get throws {
                var _result: boolean = 0
                try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_IsNumericScalar(comPointer, &_result))
                return COM.BooleanProjection.toSwift(_result)
            }
        }

        public var type: WindowsFoundation_PropertyType {
            get throws {
                var _result: __x_ABI_CWindows_CFoundation_CPropertyType = WindowsFoundation_PropertyType.abiDefaultValue
                try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.get_Type(comPointer, &_result))
                return WindowsFoundation_PropertyType.toSwift(_result)
            }
        }

        public func getUInt8() throws -> Swift.UInt8 {
            var _result: UINT8 = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt8(comPointer, &_result))
            return _result
        }

        public func getInt16() throws -> Swift.Int16 {
            var _result: INT16 = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInt16(comPointer, &_result))
            return _result
        }

        public func getUInt16() throws -> Swift.UInt16 {
            var _result: UINT16 = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt16(comPointer, &_result))
            return _result
        }

        public func getInt32() throws -> Swift.Int32 {
            var _result: INT32 = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInt32(comPointer, &_result))
            return _result
        }

        public func getUInt32() throws -> Swift.UInt32 {
            var _result: UINT32 = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt32(comPointer, &_result))
            return _result
        }

        public func getInt64() throws -> Swift.Int64 {
            var _result: INT64 = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInt64(comPointer, &_result))
            return _result
        }

        public func getUInt64() throws -> Swift.UInt64 {
            var _result: UINT64 = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt64(comPointer, &_result))
            return _result
        }

        public func getSingle() throws -> Swift.Float {
            var _result: FLOAT = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetSingle(comPointer, &_result))
            return _result
        }

        public func getDouble() throws -> Swift.Double {
            var _result: DOUBLE = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetDouble(comPointer, &_result))
            return _result
        }

        public func getChar16() throws -> COM.WideChar {
            var _result: CWindowsFoundation.WCHAR = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetChar16(comPointer, &_result))
            return COM.WideChar.toSwift(_result)
        }

        public func getBoolean() throws -> Swift.Bool {
            var _result: boolean = 0
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetBoolean(comPointer, &_result))
            return COM.BooleanProjection.toSwift(_result)
        }

        public func getString() throws -> Swift.String {
            var _result: CWindowsFoundation.HSTRING? = nil
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetString(comPointer, &_result))
            return WindowsRuntime.HStringProjection.toSwift(consuming: &_result)
        }

        public func getGuid() throws -> Foundation.UUID {
            var _result: CWindowsFoundation.GUID = COM.GUIDProjection.abiDefaultValue
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetGuid(comPointer, &_result))
            return COM.GUIDProjection.toSwift(_result)
        }

        public func getDateTime() throws -> WindowsFoundation_DateTime {
            var _result: __x_ABI_CWindows_CFoundation_CDateTime = WindowsFoundation_DateTime.abiDefaultValue
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetDateTime(comPointer, &_result))
            return WindowsFoundation_DateTime.toSwift(_result)
        }

        public func getTimeSpan() throws -> WindowsFoundation_TimeSpan {
            var _result: __x_ABI_CWindows_CFoundation_CTimeSpan = WindowsFoundation_TimeSpan.abiDefaultValue
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetTimeSpan(comPointer, &_result))
            return WindowsFoundation_TimeSpan.toSwift(_result)
        }

        public func getPoint() throws -> WindowsFoundation_Point {
            var _result: __x_ABI_CWindows_CFoundation_CPoint = WindowsFoundation_Point.abiDefaultValue
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetPoint(comPointer, &_result))
            return WindowsFoundation_Point.toSwift(_result)
        }

        public func getSize() throws -> WindowsFoundation_Size {
            var _result: __x_ABI_CWindows_CFoundation_CSize = WindowsFoundation_Size.abiDefaultValue
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetSize(comPointer, &_result))
            return WindowsFoundation_Size.toSwift(_result)
        }

        public func getRect() throws -> WindowsFoundation_Rect {
            var _result: __x_ABI_CWindows_CFoundation_CRect = WindowsFoundation_Rect.abiDefaultValue
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetRect(comPointer, &_result))
            return WindowsFoundation_Rect.toSwift(_result)
        }

        public func getUInt8Array(_ value: inout [Swift.UInt8]) throws {
            var _value: COM.COMArray<UINT8> = .null
            defer { WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.UInt8>>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt8Array(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.UInt8>>.toSwift(consuming: &_value)
        }

        public func getInt16Array(_ value: inout [Swift.Int16]) throws {
            var _value: COM.COMArray<INT16> = .null
            defer { WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Int16>>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInt16Array(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Int16>>.toSwift(consuming: &_value)
        }

        public func getUInt16Array(_ value: inout [Swift.UInt16]) throws {
            var _value: COM.COMArray<UINT16> = .null
            defer { WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.UInt16>>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt16Array(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.UInt16>>.toSwift(consuming: &_value)
        }

        public func getInt32Array(_ value: inout [Swift.Int32]) throws {
            var _value: COM.COMArray<INT32> = .null
            defer { WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Int32>>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInt32Array(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Int32>>.toSwift(consuming: &_value)
        }

        public func getUInt32Array(_ value: inout [Swift.UInt32]) throws {
            var _value: COM.COMArray<UINT32> = .null
            defer { WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.UInt32>>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt32Array(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.UInt32>>.toSwift(consuming: &_value)
        }

        public func getInt64Array(_ value: inout [Swift.Int64]) throws {
            var _value: COM.COMArray<INT64> = .null
            defer { WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Int64>>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInt64Array(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Int64>>.toSwift(consuming: &_value)
        }

        public func getUInt64Array(_ value: inout [Swift.UInt64]) throws {
            var _value: COM.COMArray<UINT64> = .null
            defer { WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.UInt64>>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetUInt64Array(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.UInt64>>.toSwift(consuming: &_value)
        }

        public func getSingleArray(_ value: inout [Swift.Float]) throws {
            var _value: COM.COMArray<FLOAT> = .null
            defer { WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Float>>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetSingleArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Float>>.toSwift(consuming: &_value)
        }

        public func getDoubleArray(_ value: inout [Swift.Double]) throws {
            var _value: COM.COMArray<DOUBLE> = .null
            defer { WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Double>>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetDoubleArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<NumericProjection<Swift.Double>>.toSwift(consuming: &_value)
        }

        public func getChar16Array(_ value: inout [COM.WideChar]) throws {
            var _value: COM.COMArray<CWindowsFoundation.WCHAR> = .null
            defer { WindowsRuntime.WinRTArrayProjection<COM.WideChar>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetChar16Array(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<COM.WideChar>.toSwift(consuming: &_value)
        }

        public func getBooleanArray(_ value: inout [Swift.Bool]) throws {
            var _value: COM.COMArray<boolean> = .null
            defer { WindowsRuntime.WinRTArrayProjection<COM.BooleanProjection>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetBooleanArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<COM.BooleanProjection>.toSwift(consuming: &_value)
        }

        public func getStringArray(_ value: inout [Swift.String]) throws {
            var _value: COM.COMArray<CWindowsFoundation.HSTRING?> = .null
            defer { WindowsRuntime.WinRTArrayProjection<WindowsRuntime.HStringProjection>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetStringArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<WindowsRuntime.HStringProjection>.toSwift(consuming: &_value)
        }

        public func getInspectableArray(_ value: inout [WindowsRuntime.IInspectable?]) throws {
            var _value: COM.COMArray<IInspectableProjection.COMPointer?> = .null
            defer { WindowsRuntime.WinRTArrayProjection<WindowsRuntime.IInspectableProjection>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetInspectableArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<WindowsRuntime.IInspectableProjection>.toSwift(consuming: &_value)
        }

        public func getGuidArray(_ value: inout [Foundation.UUID]) throws {
            var _value: COM.COMArray<CWindowsFoundation.GUID> = .null
            defer { WindowsRuntime.WinRTArrayProjection<COM.GUIDProjection>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetGuidArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<COM.GUIDProjection>.toSwift(consuming: &_value)
        }

        public func getDateTimeArray(_ value: inout [WindowsFoundation_DateTime]) throws {
            var _value: COM.COMArray<__x_ABI_CWindows_CFoundation_CDateTime> = .null
            defer { WindowsRuntime.WinRTArrayProjection<WindowsFoundation_DateTime>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetDateTimeArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<WindowsFoundation_DateTime>.toSwift(consuming: &_value)
        }

        public func getTimeSpanArray(_ value: inout [WindowsFoundation_TimeSpan]) throws {
            var _value: COM.COMArray<__x_ABI_CWindows_CFoundation_CTimeSpan> = .null
            defer { WindowsRuntime.WinRTArrayProjection<WindowsFoundation_TimeSpan>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetTimeSpanArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<WindowsFoundation_TimeSpan>.toSwift(consuming: &_value)
        }

        public func getPointArray(_ value: inout [WindowsFoundation_Point]) throws {
            var _value: COM.COMArray<__x_ABI_CWindows_CFoundation_CPoint> = .null
            defer { WindowsRuntime.WinRTArrayProjection<WindowsFoundation_Point>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetPointArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<WindowsFoundation_Point>.toSwift(consuming: &_value)
        }

        public func getSizeArray(_ value: inout [WindowsFoundation_Size]) throws {
            var _value: COM.COMArray<__x_ABI_CWindows_CFoundation_CSize> = .null
            defer { WindowsRuntime.WinRTArrayProjection<WindowsFoundation_Size>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetSizeArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<WindowsFoundation_Size>.toSwift(consuming: &_value)
        }

        public func getRectArray(_ value: inout [WindowsFoundation_Rect]) throws {
            var _value: COM.COMArray<__x_ABI_CWindows_CFoundation_CRect> = .null
            defer { WindowsRuntime.WinRTArrayProjection<WindowsFoundation_Rect>.release(&_value) }
            try HResult.throwIfFailed(comPointer.pointee.lpVtbl.pointee.GetRectArray(comPointer, &_value.count, &_value.elements))
            value = WindowsRuntime.WinRTArrayProjection<WindowsFoundation_Rect>.toSwift(consuming: &_value)
        }
    }
}