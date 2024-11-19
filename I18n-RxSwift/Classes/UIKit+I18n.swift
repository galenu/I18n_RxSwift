//
//  UIKit+I18n.swift
//  RxSwiftTheme
//
//  Created by CNCEMN188807 on 2024/11/6.
//

import RxSwift
import RxCocoa
import NSObject_Rx

extension I18nWrapper where Base: UIButton {
    
    public func setTitle(_ value: I18nDynamicValue<String>, for state: UIControl.State) {
        I18nObservable.shared.subject.subscribe { [weak base] _ in
            base?.setTitle(value.dynamicValue(), for: state)
        }.disposed(by: base.rx.disposeBag)
    }
    
    public func setAttributedTitle(_ value: I18nDynamicValue<NSAttributedString>, for state: UIControl.State) {
        I18nObservable.shared.subject.subscribe { [weak base] _ in
            base?.setAttributedTitle(value.dynamicValue(), for: state)
        }.disposed(by: base.rx.disposeBag)
    }
}

