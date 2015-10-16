//
//  StringExtensions.swift
//  CodeTranslator
//
//  Created by Christopher Spencer on 10/15/15.
//  Copyright (c) 2015 Christopher Spencer. All rights reserved.
//

import Foundation

extension String {
    var lastCharacter: String? {
        if count(self) > 0 {
            return substringFromIndex(endIndex.predecessor())
        } else {
            return nil
        }
    }
}