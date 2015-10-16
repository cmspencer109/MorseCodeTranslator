//
//  MorseCode.swift
//  CodeTranslator
//
//  Created by Christopher Spencer on 10/15/15.
//  Copyright (c) 2015 Christopher Spencer. All rights reserved.
//

import Foundation

class MorseCode: NSObject {
    
    // MorseCode translator
    // Usage: morseCode(messageToTranslate)
    
    let morseLookupTable: [Character: String] = ["a" : ".- ", "b" : "-... ", "c" : "-.-. ", "d" : "-.. ", "e" : ". ", "f" : "..-. ", "g" : "--. ", "h" : ".... ", "i" : ".. ", "j" : ".--- ", "k" : "-.- ", "l" : ".-.. ", "m" : "-- ", "n" : "-. ", "o" : "--- ", "p" : ".--. ", "q" : "--.- ", "r" : ".-. ", "s" : "... ", "t" : "- ", "u" : "..- ", "v" : "...- ", "w" : ".-- ", "x" : "-..- ", "y" : "-.-- ", "z" : "--.. ", " " : " /  ", "." : "", "," : "", "!" : "", "?" : ""]
    
    func getMorseEquivalent(englishLetter: Character) -> String {
        return morseLookupTable[englishLetter]!
    }
    
    func translate(message: String) -> String {
        var translation = ""
    
        for englishLetter in message.lowercaseString {
            translation += getMorseEquivalent(englishLetter)
        }
        return translation
    }
    
}