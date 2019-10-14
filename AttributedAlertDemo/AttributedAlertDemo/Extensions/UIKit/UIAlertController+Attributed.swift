//
//  UIAlertController+Attributed.swift
//  AttributedAlertDemo
//
//  Created by Yuki Okudera on 2019/10/14.
//  Copyright © 2019 Yuki Okudera. All rights reserved.
//

import UIKit

extension UIAlertController {
    
    class func attributedAlert(title: String = "",
                               message: String = "",
                               attributedTitle: NSAttributedString? = nil,
                               attributedMessage: NSAttributedString? = nil) -> UIAlertController {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if let attributedTitle = attributedTitle {
            alert.setValue(attributedTitle, forKey: "attributedTitle")
        }
        if let attributedMessage = attributedMessage {
            alert.setValue(attributedMessage, forKey: "attributedMessage")
        }
        return alert
    }
    
    func appendOkAction(title: String? = "OK", style: UIAlertAction.Style = .default, handler: ((UIAlertAction) -> Void)?) {
        self.addAction(.init(title: title, style: style, handler: handler))
    }
    
    func appendCancelAction(title: String? = "Cancel", style: UIAlertAction.Style = .cancel, handler: ((UIAlertAction) -> Void)?) {
        self.addAction(.init(title: title, style: style, handler: handler))
    }
}
