//
//  HMI18n+I8nDynamicValue.swift
//  RxSwiftTheme_Example
//
//  Created by CNCEMN188807 on 2024/11/20.
//  Copyright © 2024 CocoaPods. All rights reserved.
//
import I18n_RxSwift

extension String {
    public func localized(_ args: [CVarArg] = []) -> String {
        return self.i18n(bundle: HMI18n.shared.currentLanguageBundle, defaultBundle: HMI18n.shared.defaultLanguageBundle, args: args)
    }
}

extension I18nDynamicValue {
    public static func i18n<T>(_ dynamicValue: @escaping (() -> T)) -> I18nDynamicValue<T> {
        return HMI18n.shared.service.dynamicValue(dynamicValue)
    }
}

