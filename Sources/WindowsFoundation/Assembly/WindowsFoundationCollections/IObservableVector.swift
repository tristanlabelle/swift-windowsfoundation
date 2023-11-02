// Generated by swift-winrt
// swiftlint:disable all

import CWindowsFoundation
import WindowsRuntime
import struct Foundation.UUID

/// Notifies listeners of changes to the vector.
public protocol WindowsFoundationCollections_IObservableVectorProtocol<T>: WindowsFoundationCollections_IVectorProtocol {
    associatedtype T

    /// Occurs when the vector changes.
    func vectorChanged(adding vhnd: WindowsFoundationCollections_VectorChangedEventHandler<T>?) throws -> WindowsRuntime.EventRegistration
    func vectorChanged(removing token: WindowsRuntime.EventRegistrationToken) throws
}

/// Notifies listeners of changes to the vector.
public typealias WindowsFoundationCollections_IObservableVector<T> = any WindowsFoundationCollections_IObservableVectorProtocol<T>

public enum WindowsFoundationCollections_IObservableVectorProjection {
}