// Generated by swift-winrt
// swiftlint:disable all

import WindowsRuntime
import struct Foundation.UUID

public typealias WindowsFoundation_AsyncActionCompletedHandler = (WindowsFoundation_IAsyncAction?, WindowsFoundation_AsyncStatus) throws -> Void
public typealias WindowsFoundation_AsyncActionProgressHandler<TProgress> = (WindowsFoundation_IAsyncActionWithProgress<TProgress>?, TProgress) throws -> Void
public typealias WindowsFoundation_AsyncActionWithProgressCompletedHandler<TProgress> = (WindowsFoundation_IAsyncActionWithProgress<TProgress>?, WindowsFoundation_AsyncStatus) throws -> Void
public typealias WindowsFoundation_AsyncOperationCompletedHandler<TResult> = (WindowsFoundation_IAsyncOperation<TResult>?, WindowsFoundation_AsyncStatus) throws -> Void
public typealias WindowsFoundation_AsyncOperationProgressHandler<TResult, TProgress> = (WindowsFoundation_IAsyncOperationWithProgress<TResult, TProgress>?, TProgress) throws -> Void
public typealias WindowsFoundation_AsyncOperationWithProgressCompletedHandler<TResult, TProgress> = (WindowsFoundation_IAsyncOperationWithProgress<TResult, TProgress>?, WindowsFoundation_AsyncStatus) throws -> Void

public struct WindowsFoundation_AsyncStatus: RawRepresentable, Hashable, Codable {
    public var rawValue: Int32

    public init(rawValue: Int32 = 0) {
        self.rawValue = rawValue
    }

    public static let canceled: Self = Self(rawValue: 2)
    public static let completed: Self = Self(rawValue: 1)
    public static let error: Self = Self(rawValue: 3)
    public static let started: Self = Self(rawValue: 0)
}

public struct WindowsFoundation_DateTime: Hashable, Codable {
    public var universalTime: Int64 = 0

    public init() {
    }

    public init(universalTime: Int64) {
        self.universalTime = universalTime
    }
}

public typealias WindowsFoundation_DeferralCompletedHandler = () throws -> Void
public typealias WindowsFoundation_EventHandler<T> = (WindowsRuntime.IInspectable?, T) throws -> Void

public struct WindowsFoundation_EventRegistrationToken: Hashable, Codable {
    public var value: Int64 = 0

    public init() {
    }

    public init(value: Int64) {
        self.value = value
    }
}

public struct WindowsFoundation_FoundationContract: Hashable, Codable {
    public init() {
    }
}

public struct WindowsFoundation_HResult: Hashable, Codable {
    public var value: Int32 = 0

    public init() {
    }

    public init(value: Int32) {
        self.value = value
    }
}

public protocol WindowsFoundation_IAsyncActionProtocol: IInspectableProtocol {
    var completed: WindowsFoundation_AsyncActionCompletedHandler { get throws }
    func completed(_ newValue: WindowsFoundation_AsyncActionCompletedHandler?) throws

    func getResults() throws
}

public typealias WindowsFoundation_IAsyncAction = any WindowsFoundation_IAsyncActionProtocol

public protocol WindowsFoundation_IAsyncActionWithProgressProtocol<TProgress>: IInspectableProtocol {
    associatedtype TProgress

    var progress: WindowsFoundation_AsyncActionProgressHandler<TProgress> { get throws }
    func progress(_ newValue: WindowsFoundation_AsyncActionProgressHandler<TProgress>?) throws
    var completed: WindowsFoundation_AsyncActionWithProgressCompletedHandler<TProgress> { get throws }
    func completed(_ newValue: WindowsFoundation_AsyncActionWithProgressCompletedHandler<TProgress>?) throws

    func getResults() throws
}

public typealias WindowsFoundation_IAsyncActionWithProgress<TProgress> = any WindowsFoundation_IAsyncActionWithProgressProtocol<TProgress>

public protocol WindowsFoundation_IAsyncInfoProtocol: IInspectableProtocol {
    var errorCode: WindowsFoundation_HResult { get throws }
    var id: UInt32 { get throws }
    var status: WindowsFoundation_AsyncStatus { get throws }

    func cancel() throws
    func close() throws
}

public typealias WindowsFoundation_IAsyncInfo = any WindowsFoundation_IAsyncInfoProtocol

public protocol WindowsFoundation_IAsyncOperationWithProgressProtocol<TResult, TProgress>: IInspectableProtocol {
    associatedtype TResult
    associatedtype TProgress

    var progress: WindowsFoundation_AsyncOperationProgressHandler<TResult, TProgress> { get throws }
    func progress(_ newValue: WindowsFoundation_AsyncOperationProgressHandler<TResult, TProgress>?) throws
    var completed: WindowsFoundation_AsyncOperationWithProgressCompletedHandler<TResult, TProgress> { get throws }
    func completed(_ newValue: WindowsFoundation_AsyncOperationWithProgressCompletedHandler<TResult, TProgress>?) throws

    func getResults() throws -> TResult
}

public typealias WindowsFoundation_IAsyncOperationWithProgress<TResult, TProgress> = any WindowsFoundation_IAsyncOperationWithProgressProtocol<TResult, TProgress>

public protocol WindowsFoundation_IAsyncOperationProtocol<TResult>: IInspectableProtocol {
    associatedtype TResult

    var completed: WindowsFoundation_AsyncOperationCompletedHandler<TResult> { get throws }
    func completed(_ newValue: WindowsFoundation_AsyncOperationCompletedHandler<TResult>?) throws

    func getResults() throws -> TResult
}

public typealias WindowsFoundation_IAsyncOperation<TResult> = any WindowsFoundation_IAsyncOperationProtocol<TResult>

public protocol WindowsFoundation_IClosableProtocol: IInspectableProtocol {
    func close() throws
}

public typealias WindowsFoundation_IClosable = any WindowsFoundation_IClosableProtocol

internal protocol WindowsFoundation_IDeferralProtocol: IInspectableProtocol {
    func complete() throws
}

internal typealias WindowsFoundation_IDeferral = any WindowsFoundation_IDeferralProtocol

public protocol WindowsFoundation_IPropertyValueProtocol: IInspectableProtocol {
    var isNumericScalar: Bool { get throws }
    var type: WindowsFoundation_PropertyType { get throws }

    func getUInt8() throws -> Int8
    func getInt16() throws -> Int16
    func getUInt16() throws -> UInt16
    func getInt32() throws -> Int32
    func getUInt32() throws -> UInt32
    func getInt64() throws -> Int64
    func getUInt64() throws -> UInt64
    func getSingle() throws -> Float
    func getDouble() throws -> Double
    func getChar16() throws -> UTF16.CodeUnit
    func getBoolean() throws -> Bool
    func getString() throws -> String
    func getGuid() throws -> Foundation.UUID
    func getDateTime() throws -> WindowsFoundation_DateTime
    func getTimeSpan() throws -> WindowsFoundation_TimeSpan
    func getPoint() throws -> WindowsFoundation_Point
    func getSize() throws -> WindowsFoundation_Size
    func getRect() throws -> WindowsFoundation_Rect
    func getUInt8Array(_ value: inout [Int8]) throws
    func getInt16Array(_ value: inout [Int16]) throws
    func getUInt16Array(_ value: inout [UInt16]) throws
    func getInt32Array(_ value: inout [Int32]) throws
    func getUInt32Array(_ value: inout [UInt32]) throws
    func getInt64Array(_ value: inout [Int64]) throws
    func getUInt64Array(_ value: inout [UInt64]) throws
    func getSingleArray(_ value: inout [Float]) throws
    func getDoubleArray(_ value: inout [Double]) throws
    func getChar16Array(_ value: inout [UTF16.CodeUnit]) throws
    func getBooleanArray(_ value: inout [Bool]) throws
    func getStringArray(_ value: inout [String]) throws
    func getInspectableArray(_ value: inout [WindowsRuntime.IInspectable?]) throws
    func getGuidArray(_ value: inout [Foundation.UUID]) throws
    func getDateTimeArray(_ value: inout [WindowsFoundation_DateTime]) throws
    func getTimeSpanArray(_ value: inout [WindowsFoundation_TimeSpan]) throws
    func getPointArray(_ value: inout [WindowsFoundation_Point]) throws
    func getSizeArray(_ value: inout [WindowsFoundation_Size]) throws
    func getRectArray(_ value: inout [WindowsFoundation_Rect]) throws
}

public typealias WindowsFoundation_IPropertyValue = any WindowsFoundation_IPropertyValueProtocol

public protocol WindowsFoundation_IReferenceArrayProtocol<T>: IInspectableProtocol {
    associatedtype T

    var value: [T] { get throws }
}

public typealias WindowsFoundation_IReferenceArray<T> = any WindowsFoundation_IReferenceArrayProtocol<T>

public protocol WindowsFoundation_IReferenceProtocol<T>: IInspectableProtocol {
    associatedtype T

    var value: T { get throws }
}

public typealias WindowsFoundation_IReference<T> = any WindowsFoundation_IReferenceProtocol<T>

public protocol WindowsFoundation_IStringableProtocol: IInspectableProtocol {
    func toString() throws -> String
}

public typealias WindowsFoundation_IStringable = any WindowsFoundation_IStringableProtocol

public struct WindowsFoundation_Point: Hashable, Codable {
    public var x: Float = 0.0
    public var y: Float = 0.0

    public init() {
    }

    public init(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
}

public struct WindowsFoundation_PropertyType: RawRepresentable, Hashable, Codable {
    public var rawValue: Int32

    public init(rawValue: Int32 = 0) {
        self.rawValue = rawValue
    }

    public static let empty: Self = Self(rawValue: 0)
    public static let uint8: Self = Self(rawValue: 1)
    public static let int16: Self = Self(rawValue: 2)
    public static let uint16: Self = Self(rawValue: 3)
    public static let int32: Self = Self(rawValue: 4)
    public static let uint32: Self = Self(rawValue: 5)
    public static let int64: Self = Self(rawValue: 6)
    public static let uint64: Self = Self(rawValue: 7)
    public static let single: Self = Self(rawValue: 8)
    public static let double: Self = Self(rawValue: 9)
    public static let char16: Self = Self(rawValue: 10)
    public static let boolean: Self = Self(rawValue: 11)
    public static let string: Self = Self(rawValue: 12)
    public static let inspectable: Self = Self(rawValue: 13)
    public static let dateTime: Self = Self(rawValue: 14)
    public static let timeSpan: Self = Self(rawValue: 15)
    public static let guid: Self = Self(rawValue: 16)
    public static let point: Self = Self(rawValue: 17)
    public static let size: Self = Self(rawValue: 18)
    public static let rect: Self = Self(rawValue: 19)
    public static let otherType: Self = Self(rawValue: 20)
    public static let uint8Array: Self = Self(rawValue: 1025)
    public static let int16Array: Self = Self(rawValue: 1026)
    public static let uint16Array: Self = Self(rawValue: 1027)
    public static let int32Array: Self = Self(rawValue: 1028)
    public static let uint32Array: Self = Self(rawValue: 1029)
    public static let int64Array: Self = Self(rawValue: 1030)
    public static let uint64Array: Self = Self(rawValue: 1031)
    public static let singleArray: Self = Self(rawValue: 1032)
    public static let doubleArray: Self = Self(rawValue: 1033)
    public static let char16Array: Self = Self(rawValue: 1034)
    public static let booleanArray: Self = Self(rawValue: 1035)
    public static let stringArray: Self = Self(rawValue: 1036)
    public static let inspectableArray: Self = Self(rawValue: 1037)
    public static let dateTimeArray: Self = Self(rawValue: 1038)
    public static let timeSpanArray: Self = Self(rawValue: 1039)
    public static let guidArray: Self = Self(rawValue: 1040)
    public static let pointArray: Self = Self(rawValue: 1041)
    public static let sizeArray: Self = Self(rawValue: 1042)
    public static let rectArray: Self = Self(rawValue: 1043)
    public static let otherTypeArray: Self = Self(rawValue: 1044)
}

public struct WindowsFoundation_Rect: Hashable, Codable {
    public var x: Float = 0.0
    public var y: Float = 0.0
    public var width: Float = 0.0
    public var height: Float = 0.0

    public init() {
    }

    public init(x: Float, y: Float, width: Float, height: Float) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
}

public struct WindowsFoundation_Size: Hashable, Codable {
    public var width: Float = 0.0
    public var height: Float = 0.0

    public init() {
    }

    public init(width: Float, height: Float) {
        self.width = width
        self.height = height
    }
}

public struct WindowsFoundation_TimeSpan: Hashable, Codable {
    public var duration: Int64 = 0

    public init() {
    }

    public init(duration: Int64) {
        self.duration = duration
    }
}

public typealias WindowsFoundation_TypedEventHandler<TSender, TResult> = (TSender, TResult) throws -> Void