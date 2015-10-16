//
//  NumberCode.swift
//  CodeTranslator
//
//  Created by Christopher Spencer on 10/15/15.
//  Copyright (c) 2015 Christopher Spencer. All rights reserved.
//

import Foundation

class NumberCode: NSObject {
    
    // NumberCode translator
    // Usage: numberCode(messageToTranslate)
    
    let morseLookupTable: [Character: String] = ["a" : "1", "b" : "2", "c" : "3 ", "d" : "4", "e" : "5", "f" : "6", "g" : "7", "h" : "8", "i" : "9", "j" : "10", "k" : "11", "l" : "12", "m" : "13", "n" : "14", "o" : "15", "p" : "16", "q" : "17", "r" : "18", "s" : "19", "t" : "20", "u" : "21", "v" : "22", "w" : "23", "x" : "24", "y" : "25", "z" : "26", " " : " ", "." : "", "," : "", "!" : "", "?" : ""]
    
    func getNumberEquivalent(englishLetter: Character) -> String {
        return morseLookupTable[englishLetter]!
    }
    
    func translate(message: String) -> String {
        var translation = ""
        // For each character in the string,
        for character in message.lowercaseString {
            // If current character is not a space and the last character in the translation was not a space,
            if character != " " && translation != "" && translation.lastCharacter != " " {
                // Add a dash to the end of the translation
                translation += "-"
            }
            // Add the translation for the current character
            translation += getNumberEquivalent(character)
        }
        return translation
    }
}