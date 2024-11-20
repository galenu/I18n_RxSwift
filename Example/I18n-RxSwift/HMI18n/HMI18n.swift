//
//  HMI18n.swift
//  RxSwiftTheme_Example
//
//  Created by CNCEMN188807 on 2024/11/7.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import I18n_RxSwift

/// 语言类型
public enum HMLanguageType: String {
    
    case en
    
    case zhHans = "zh-Hans"
    
    case zhHant = "zh-Hant"
}

public class HMI18n {
    
    public var languageType: HMLanguageType
    
    public var currentLanguageBundle: Bundle!
    public var defaultLanguageBundle: Bundle!
    
    public static let shared = HMI18n()
    public let service = I18nService()
    
    private init() {
        self.languageType = .en
        self.updateLanguageBundle()
    }
    
    /// 切换语言
    public func switchLanguage(_ type: HMLanguageType) {
        self.languageType = type
        self.updateLanguageBundle()
        self.service.switchLanguage(languageType.rawValue)
    }
    
    private func updateLanguageBundle() {
        self.currentLanguageBundle = self.getLanguageBundle(languageType: languageType)
        self.defaultLanguageBundle = self.getLanguageBundle(languageType: .en)
    }
    
    private func getLanguageBundle(languageType: HMLanguageType) -> Bundle {
        if let bundlePath = Bundle.main.path(forResource: languageType.rawValue, ofType: "lproj"),
           let bundle = Bundle(path: bundlePath) {
            return bundle
        } else {
            return .main
        }
    }
}
