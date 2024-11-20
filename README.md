# I18n-RxSwift

[![CI Status](https://img.shields.io/travis/galenu/I18n-RxSwift.svg?style=flat)](https://travis-ci.org/galenu/I18n-RxSwift)
[![Version](https://img.shields.io/cocoapods/v/I18n-RxSwift.svg?style=flat)](https://cocoapods.org/pods/I18n-RxSwift)
[![License](https://img.shields.io/cocoapods/l/I18n-RxSwift.svg?style=flat)](https://cocoapods.org/pods/I18n-RxSwift)
[![Platform](https://img.shields.io/cocoapods/p/I18n-RxSwift.svg?style=flat)](https://cocoapods.org/pods/I18n-RxSwift)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

I18n-RxSwift is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'I18n-RxSwift'
```

```
self.i18n.changed = .i18n({
   print("语言改变: \(HMI18n.shared.languageType)")
})

label.i18n.text = RString.ptl_brightness("10")
        
btn.i18n.setTitle(RString.ptl_connect_partybox(), for: .normal)
                
btn.i18n.setAttributedTitle(.i18n({
   let text = RString.ptl_connect_partybox() + "11111" + RString.ptl_light_controls()
   let attr = NSAttributedString(string: text)
   return attr
}), for: .normal)
```

## Author

galenu, 250167616@qq.com

## License

I18n-RxSwift is available under the MIT license. See the LICENSE file for more info.
