//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import RswiftResources
import UIKit

private class BundleFinder {}
let R = _R(bundle: Bundle(for: BundleFinder.self))

struct _R {
  let bundle: Foundation.Bundle
  var string: string { .init(bundle: bundle, preferredLanguages: nil, locale: nil) }
  var storyboard: storyboard { .init(bundle: bundle) }

  func string(bundle: Foundation.Bundle) -> string {
    .init(bundle: bundle, preferredLanguages: nil, locale: nil)
  }
  func string(locale: Foundation.Locale) -> string {
    .init(bundle: bundle, preferredLanguages: nil, locale: locale)
  }
  func string(preferredLanguages: [String], locale: Locale? = nil) -> string {
    .init(bundle: bundle, preferredLanguages: preferredLanguages, locale: locale)
  }
  func storyboard(bundle: Foundation.Bundle) -> storyboard {
    .init(bundle: bundle)
  }
  func validate() throws {
    try self.storyboard.validate()
  }

  struct project {
    let developmentRegion = "English"
  }

  /// This `_R.string` struct is generated, and contains static references to 1 localization tables.
  struct string {
    let bundle: Foundation.Bundle
    let preferredLanguages: [String]?
    let locale: Locale?
    var localizable: localizable { .init(source: .init(bundle: bundle, tableName: "Localizable", preferredLanguages: preferredLanguages, locale: locale)) }

    func localizable(preferredLanguages: [String]) -> localizable {
      .init(source: .init(bundle: bundle, tableName: "Localizable", preferredLanguages: preferredLanguages, locale: locale))
    }


    /// This `_R.string.localizable` struct is generated, and contains static references to 6 localization keys.
    struct localizable {
      let source: RswiftResources.StringResource.Source

      /// de translation: Helligkeit%1$@
      ///
      /// Key: ptl_brightness
      ///
      /// Locales: de, en, zh-Hans, zh-Hant
      var ptl_brightness: RswiftResources.StringResource1<String> { .init(key: "ptl_brightness", tableName: "Localizable", source: source, developmentValue: nil, comment: nil) }

      /// de translation: Synchronisierung mit PartyBox
      ///
      /// Key: ptl_connect_partybox
      ///
      /// Locales: de, en, zh-Hans, zh-Hant
      var ptl_connect_partybox: RswiftResources.StringResource { .init(key: "ptl_connect_partybox", tableName: "Localizable", source: source, developmentValue: nil, comment: nil) }

      /// de translation: Lichtsteuerungen
      ///
      /// Key: ptl_light_controls
      ///
      /// Locales: de, en, zh-Hant
      var ptl_light_controls: RswiftResources.StringResource { .init(key: "ptl_light_controls", tableName: "Localizable", source: source, developmentValue: nil, comment: nil) }

      /// de translation: PartyTogether
      ///
      /// Key: ptl_party_together
      ///
      /// Locales: de, en, zh-Hans, zh-Hant
      var ptl_party_together: RswiftResources.StringResource { .init(key: "ptl_party_together", tableName: "Localizable", source: source, developmentValue: nil, comment: nil) }

      /// de translation: Geschwindigkeit
      ///
      /// Key: ptl_speed
      ///
      /// Locales: de, en, zh-Hans, zh-Hant
      var ptl_speed: RswiftResources.StringResource { .init(key: "ptl_speed", tableName: "Localizable", source: source, developmentValue: nil, comment: nil) }

      /// de translation: Die Lichteffekte werden synchronisiert
      ///
      /// Key: ptl_sync_light_effect
      ///
      /// Locales: de, en, zh-Hans, zh-Hant
      var ptl_sync_light_effect: RswiftResources.StringResource { .init(key: "ptl_sync_light_effect", tableName: "Localizable", source: source, developmentValue: nil, comment: nil) }
    }
  }

  /// This `_R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    let bundle: Foundation.Bundle
    var launchScreen: launchScreen { .init(bundle: bundle) }
    var main: main { .init(bundle: bundle) }

    func launchScreen(bundle: Foundation.Bundle) -> launchScreen {
      .init(bundle: bundle)
    }
    func main(bundle: Foundation.Bundle) -> main {
      .init(bundle: bundle)
    }
    func validate() throws {
      try self.launchScreen.validate()
      try self.main.validate()
    }


    /// Storyboard `Launch Screen`.
    struct launchScreen: RswiftResources.StoryboardReference, RswiftResources.InitialControllerContainer {
      typealias InitialController = UIKit.UIViewController

      let bundle: Foundation.Bundle

      let name = "Launch Screen"
      func validate() throws {

      }
    }

    /// Storyboard `Main`.
    struct main: RswiftResources.StoryboardReference, RswiftResources.InitialControllerContainer {
      typealias InitialController = UIKit.UINavigationController

      let bundle: Foundation.Bundle

      let name = "Main"

      var homeController: RswiftResources.StoryboardViewControllerIdentifier<HomeController> { .init(identifier: "HomeController", storyboard: name, bundle: bundle) }
      var viewController: RswiftResources.StoryboardViewControllerIdentifier<ViewController> { .init(identifier: "ViewController", storyboard: name, bundle: bundle) }

      func validate() throws {
        if homeController() == nil { throw RswiftResources.ValidationError("[R.swift] ViewController with identifier 'homeController' could not be loaded from storyboard 'Main' as 'HomeController'.") }
        if viewController() == nil { throw RswiftResources.ValidationError("[R.swift] ViewController with identifier 'viewController' could not be loaded from storyboard 'Main' as 'ViewController'.") }
      }
    }
  }
}