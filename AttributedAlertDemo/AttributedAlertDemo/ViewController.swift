//
//  ViewController.swift
//  AttributedAlertDemo
//
//  Created by Yuki Okudera on 2019/10/11.
//  Copyright © 2019 Yuki Okudera. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAttributedAlert()
    }
}

extension ViewController {
    
    private func showAttributedAlert() {
        let title = NSAttributedString.alertTitleAttributes(string: "Attributed alert", color: .red)
        let message = NSMutableAttributedString()
        message.append(NSAttributedString.systemFontAttributes(string: "This sample uses"))
        message.append(NSAttributedString.boldSystemFontAttributes(string: " NSAttributedString"))
        message.append(NSAttributedString.systemFontAttributes(string: " in alerts."))
        
        let alert = UIAlertController.attributedAlert(attributedTitle: title, attributedMessage: message)
        alert.appendOkAction { _ in
            print("Tapped 'OK'")
        }
        present(alert, animated: true, completion: nil)
    }
}
