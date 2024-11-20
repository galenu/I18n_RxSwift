//
//  ViewController.swift
//  RxSwiftTheme
//
//  Created by galenu on 11/05/2024.
//  Copyright (c) 2024 galenu. All rights reserved.
//

import UIKit
import I18n_RxSwift

class ViewController: UIViewController {
        
    @IBOutlet weak var label: HMLable!
        
    @IBOutlet weak var btn: UIButton!
    
    
    deinit {
        print("ViewController deinit")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
    }

    @IBAction func languageBtnClick(_ sender: Any) {
        HMI18n.shared.switchLanguage(HMI18n.shared.languageType == .en ? .zhHans : .en)
    }
}

class HMLable: UILabel {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    deinit {
        print("HMLable deinit")
    }
}
