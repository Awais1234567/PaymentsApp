//
//  String+Extension.swift
//  PaymentsApp
//
//  Created by Awais Khalid on 14/07/2020.
//  Copyright © 2020 Awais Khalid. All rights reserved.
//

import Foundation

extension String{
    func encrypt()->String{
        return NSString.encryptString(self, withKey: "SkDd9k88Ss7D9S9DSkDd9k88Ss7D9S9D")
    }
}
