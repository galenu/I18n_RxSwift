//
//  RString+I18n.swift
//  RxSwiftTheme_Example
//
//  Created by CNCEMN188807 on 2024/11/11.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import I18n_RxSwift
import RswiftResources

let RString = R.string.localizable.self
//let RImage = R.image.self
//let RFile = R.file.self
let RStoryboard = R.storyboard.self
//let RNib = R.nib.self

extension StringResource {
    func callAsFunction() -> String {
        return self.key.description.localized()
    }
    func callAsFunction() -> I18nDynamicValue<String> {
        return .i18n({
            return self.callAsFunction()
        })
    }
    func callAsFunction() -> I18nDynamicValue<String?> {
        return .i18n({
            return self.callAsFunction()
        })
    }
}

extension StringResource1 {
    func callAsFunction(_ arg1: Arg1) -> String {
        return self.key.description.localized([arg1])
    }
    func callAsFunction(_ arg1: Arg1) -> I18nDynamicValue<String> {
        return .i18n({
            return self.callAsFunction(arg1)
        })
    }
    func callAsFunction(_ arg1: Arg1) -> I18nDynamicValue<String?> {
        return .i18n({
            return self.callAsFunction(arg1)
        })
    }
}
extension StringResource2 {
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2) -> String {
        return self.key.description.localized([arg1, arg2])
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2) -> I18nDynamicValue<String> {
        return .i18n({
            return self.callAsFunction(arg1, arg2)
        })
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2) -> I18nDynamicValue<String?> {
        return .i18n({
            return self.callAsFunction(arg1, arg2)
        })
    }
}
extension StringResource3 {
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3) -> String {
        return self.key.description.localized([arg1, arg2, arg3])
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3) -> I18nDynamicValue<String> {
        return .i18n({
            return self.callAsFunction(arg1, arg2, arg3)
        })
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3) -> I18nDynamicValue<String?> {
        return .i18n({
            return self.callAsFunction(arg1, arg2, arg3)
        })
    }
}
extension StringResource4 {
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4) -> String {
        return self.key.description.localized([arg1, arg2, arg3, arg4])
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4) -> I18nDynamicValue<String> {
        return .i18n({
            return self.callAsFunction(arg1, arg2, arg3, arg4)
        })
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4) -> I18nDynamicValue<String?> {
        return .i18n({
            return self.callAsFunction(arg1, arg2, arg3, arg4)
        })
    }
}
extension StringResource5 {
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5) -> String {
        return self.key.description.localized([arg1, arg2, arg3, arg4, arg5])
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5) -> I18nDynamicValue<String> {
        return .i18n({
            return self.callAsFunction(arg1, arg2, arg3, arg4, arg5)
        })
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5) -> I18nDynamicValue<String?> {
        return .i18n({
            return self.callAsFunction(arg1, arg2, arg3, arg4, arg5)
        })
    }
}
extension StringResource6 {
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6) -> String {
        return self.key.description.localized([arg1, arg2, arg3, arg4, arg5, arg6])
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6) -> I18nDynamicValue<String> {
        return .i18n({
            return self.callAsFunction(arg1, arg2, arg3, arg4, arg5, arg6)
        })
    }
    func callAsFunction(_ arg1: Arg1, _ arg2: Arg2, _ arg3: Arg3, _ arg4: Arg4, _ arg5: Arg5, _ arg6: Arg6) -> I18nDynamicValue<String?> {
        return .i18n({
            return self.callAsFunction(arg1, arg2, arg3, arg4, arg5, arg6)
        })
    }
}
