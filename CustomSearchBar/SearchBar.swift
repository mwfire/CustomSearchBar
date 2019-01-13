//
//  SearchBar.swift
//  CustomSearchBar
//
//  Created by Martin Wildfeuer on 05.01.19.
//  Copyright © 2019 Martin Wildfeuer. All rights reserved.
//

import UIKit

final class SearchBar: UITextField {
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        setup()
    }
    
    private func setup() {

        placeholder = "Search"
        
        // Keyboard setup
        returnKeyType = .search
        autocorrectionType = .no
        autocapitalizationType = .none
        clearButtonMode = .always
        
        // Search icon
        let icon = UIImage(named: "search_icon")
        let iconView = UIImageView(image: icon)
        iconView.contentMode = .scaleAspectFit
        leftView = iconView
        leftViewMode = .always
    }
    
    // MARK: - Rect overrides
    
    private lazy var rectInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.leftViewRect(forBounds: bounds)
        rect.origin.x += 10
        return rect
    }
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.rightViewRect(forBounds: bounds)
        rect.origin.x -= 10
        return rect
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.textRect(forBounds: bounds)
        rect = rect.inset(by: rectInsets)
        return rect
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
    
    override func clearButtonRect(forBounds bounds: CGRect) -> CGRect {
        var rect = super.clearButtonRect(forBounds: bounds)
        rect.origin.x -= 10
        return rect
    }
    
}

extension UIFont {
    
    enum Avenir {
        
        static func medium(size: CGFloat = 16) -> UIFont? {
            return UIFont(name: "AvenirNext-Medium", size: size)
        }
        
    }

}

extension UIColor {
    
    static var lighterGray = UIColor(white: 0.95, alpha: 1)
    
    static var mediumGray = UIColor(white: 0.5, alpha: 1)
}
