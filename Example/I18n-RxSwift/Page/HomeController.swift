//
//  HomeController.swift
//  RxSwiftTheme_Example
//
//  Created by CNCEMN188807 on 2024/11/6.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import I18n_RxSwift

class HomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func changeTheme(_ sender: Any) {
        HMI18n.shared.switchLanguage(HMI18n.shared.languageType == .en ? .zhHans : .en)
    }
    
}
