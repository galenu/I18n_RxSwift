//
//  String+i18n.swift
//  RxSwiftTheme_Example
//
//  Created by CNCEMN188807 on 2024/11/8.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation

extension String {
    
    public func i18n(tableName: String? = nil,
                     bundle: Bundle,
                     defaultBundle: Bundle? = nil,
                     value: String = "",
                     comment: String = "",
                     locale: Locale? = nil,
                     args: [CVarArg] = []) -> String {
        var string = NSLocalizedString(self, tableName: tableName, bundle: bundle, value: value, comment: comment)
        // 如果国际化语言没有值，再次读取英文默认值
        if let defaultBundle = defaultBundle, string == self {
            string = NSLocalizedString(self, tableName: tableName, bundle: defaultBundle, value: value, comment: comment)
        }
        return String(format: string, locale: locale, arguments: args)
    }
}
