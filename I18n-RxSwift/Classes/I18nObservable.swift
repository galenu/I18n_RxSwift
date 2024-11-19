//
//  I18nObservable.swift
//  HMI18n
//
//  Created by CNCEMN188807 on 2024/11/19.
//

import RxSwift
import RxCocoa
import NSObject_Rx

public struct I18nObservable {
    
    public static let shared = I18nObservable()
    
    public let subject = BehaviorRelay<String>(value: "")
    
    private init() { }

    public func switchLanguage(_ value: String = "") {
        self.subject.accept(value)
    }
}
