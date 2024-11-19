//
//  I18nDynamicValue.swift
//  RxSwiftTheme
//
//  Created by CNCEMN188807 on 2024/11/5.
//

/// 动态值
public struct I18nDynamicValue<T> {
    
    /// 改变时的动态回调
    public var dynamicValue: (() -> T)
    
    public init(_ dynamicValue: @escaping () -> T) {
        self.dynamicValue = dynamicValue
    }
}
