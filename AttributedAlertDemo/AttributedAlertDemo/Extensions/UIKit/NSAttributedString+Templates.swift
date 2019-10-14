//
//  NSAttributedString+Templates.swift
//  AttributedAlertDemo
//
//  Created by Yuki Okudera on 2019/10/14.
//  Copyright © 2019 Yuki Okudera. All rights reserved.
//

import UIKit

extension NSAttributedString {
    
    /// アラートタイトル用（foregroundColor, boldSystemFont）
    class func alertTitleAttributes(string: String, color: UIColor, fontSize: CGFloat = 17.0) -> NSAttributedString {
        let attributes: [NSAttributedString.Key : Any] = [
            .font : UIFont.boldSystemFont(ofSize: fontSize),
            .foregroundColor: color
            
        ]
        let attributedString = NSAttributedString(string: string, attributes: attributes)
        return attributedString
    }
    
    /// システムフォント
    class func systemFontAttributes(string: String, fontSize: CGFloat = 13.0) -> NSAttributedString {
        let attributes: [NSAttributedString.Key : Any] = [
            .font : UIFont.systemFont(ofSize: fontSize)
        ]
        let attributedString = NSAttributedString(string: string, attributes: attributes)
        return attributedString
    }
    
    /// ボールドシステムフォント
    class func boldSystemFontAttributes(string: String, fontSize: CGFloat = 13.0) -> NSAttributedString {
        let attributes: [NSAttributedString.Key : Any] = [
            .font : UIFont.boldSystemFont(ofSize: fontSize),
        ]
        let attributedString = NSAttributedString(string: string, attributes: attributes)
        return attributedString
    }
    
    /// カラー
    class func colorAttributes(string: String, color: UIColor) -> NSAttributedString {
        let attributes: [NSAttributedString.Key : Any] = [
            .foregroundColor: color
        ]
        let attributedString = NSAttributedString(string: string, attributes: attributes)
        return attributedString
    }
}
