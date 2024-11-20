//
//  NSObject+Theme.swift
//  RxSwiftTheme
//
//  Created by CNCEMN188807 on 2024/11/6.
//

import RxSwift
import NSObject_Rx

extension I18nWrapper where Base: NSObject {
    
    public subscript<Property>(dynamicMember keyPath: ReferenceWritableKeyPath<Base, Property>) -> I18nDynamicValue<Property> {
        get { fatalError("set only") }
        set {
            newValue.observable
                .observe(on: MainScheduler.instance)
                .subscribe(onNext: { [weak base] _ in
                    base?[keyPath: keyPath] = newValue.dynamicValue()
                }).disposed(by: self.base.rx.disposeBag)
        }
    }
}

extension I18nWrapper where Base: NSObject {

    /// 语言改变动态回调
    public var changed: I18nDynamicValue<Void> {
        get { fatalError("set only") }
        set {
            newValue.observable
                .observe(on: MainScheduler.instance)
                .subscribe(onNext: { _ in
                    newValue.dynamicValue()
                }).disposed(by: self.base.rx.disposeBag)
        }
    }
}

