//
//  I18nCompatible.swift
//  RxSwiftTheme
//
//  Created by CNCEMN188807 on 2024/11/5.
//
import Foundation
import RxSwift

public protocol I18nCompatible {
    associatedtype CompatibleType
    var i18n: I18nWrapper<CompatibleType> { get }
}

extension I18nCompatible {
    public var i18n: I18nWrapper<Self> {
        return I18nWrapper(self)
    }
}

extension NSObject: I18nCompatible {}

@dynamicMemberLookup
public class I18nWrapper<Base> {
        
    /// Base object to extend.
    public let base: Base

    /// Creates extensions with base object.
    ///
    /// - parameter base: Base object.
    public init(_ base: Base) {
        self.base = base
    }
}
