//
//  I18nService.swift
//  RxSwiftTheme
//
//  Created by CNCEMN188807 on 2024/11/6.
//

import Foundation
import RxSwift
import RxRelay

public struct I18nService {
    
    private let subject = BehaviorRelay(value: "")
    
    public var observable: Observable<String> {
        return self.subject.asObservable()
    }
        
    public init() { }
    
    /// create I18nDynamicValue
    public func dynamicValue<T>(_ dynamicValue: @escaping (() -> T)) -> I18nDynamicValue<T> {
        return I18nDynamicValue(observable: self.observable, dynamicValue: dynamicValue)
    }
    
    public func switchLanguage(_ value: String) {
        self.subject.accept(value)
    }
}
