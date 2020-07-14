//
//  ParentTextField.swift
//  PaymentsApp
//
//  Created by Awais Khalid on 13/07/2020.
//  Copyright © 2020 Awais Khalid. All rights reserved.
//

import UIKit

class ParentTextField: UITextField{
    struct PlaceholderProperties{
        var text: String
        var color: UIColor
    }
    var properties: PlaceholderProperties?{
        didSet{
            if let pro = properties{
                attributedPlaceholder = NSAttributedString(string: pro.text, attributes: [NSAttributedString.Key.foregroundColor : pro.color])
            }
            
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
