//
//  ViewController.swift
//  CodeTranslator
//
//  Created by Christopher Spencer on 10/15/15.
//  Copyright (c) 2015 Christopher Spencer. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {

    @IBOutlet weak var inputTextField: NSTextField! {
        didSet {
            inputTextField.lineBreakMode = NSLineBreakMode.ByWordWrapping
            inputTextField.delegate = self
        }
    }
    @IBOutlet weak var translateButton: NSButton! {
        didSet {
            translateButton.title = "Translate"
        }
    }
    @IBOutlet weak var messageLabel: NSTextField! {
        didSet {
            messageLabel.stringValue = "Enter message to translate."
        }
    }
    @IBOutlet weak var outputTextField: NSTextField! {
        didSet {
            outputTextField.lineBreakMode = NSLineBreakMode.ByWordWrapping
            outputTextField.textColor = NSColor.blueColor()
        }
    }
    @IBOutlet weak var codeSelectButton: NSPopUpButton! {
        didSet {
            codeSelectButton.target = self
            codeSelectButton.action = "selectionDidChange"
        }
    }
    
    let morseCode = MorseCode()
    let numberCode = NumberCode()
    let englishTranslator = EnglishTranslator()
    
    var englishMessage: String?
    var codeMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    override func controlTextDidChange(obj: NSNotification) {
        englishMessage = englishTranslator.translateToEnglish(inputTextField.stringValue)
        codeMessage = translateToCode(englishMessage!)
        outputTextField.stringValue = codeMessage!
    }
    
    func selectionDidChange() {
        codeMessage = translateToCode(englishMessage!)
        outputTextField.stringValue = codeMessage!
    }
    
    func translateToCode(englishMessage: String) -> String {
        outputTextField.stringValue = ""
        if codeSelectButton.titleOfSelectedItem == "Morse Code" {
            return morseCode.translate(englishMessage)
        } else if codeSelectButton.titleOfSelectedItem == "Numbers" {
            return numberCode.translate(englishMessage)
        } else {
            return englishMessage
        }
    }

}

