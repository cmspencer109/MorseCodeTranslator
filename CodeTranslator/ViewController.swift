//
//  ViewController.swift
//  CodeTranslator
//
//  Created by Christopher Spencer on 10/15/15.
//  Copyright (c) 2015 Christopher Spencer. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var inputTextField: NSTextField! {
        didSet {
            inputTextField.lineBreakMode = NSLineBreakMode.ByWordWrapping
        }
    }
    @IBOutlet weak var translateButton: NSButton! {
        didSet {
            translateButton.title = "Translate"
        }
    }
    @IBOutlet weak var messageLabel: NSTextField! {
        didSet {
            messageLabel.stringValue = "Click to translate code."
        }
    }
    @IBOutlet weak var outputTextField: NSTextField! {
        didSet {
            outputTextField.lineBreakMode = NSLineBreakMode.ByWordWrapping
            outputTextField.textColor = NSColor.purpleColor()
        }
    }
    @IBOutlet weak var codeSelectButton: NSPopUpButton!
    
    let morseCode = MorseCode()
    let numberCode = NumberCode()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func translateButtonClicked(sender: AnyObject) {
        if codeSelectButton.titleOfSelectedItem == "English" {
            outputTextField.stringValue = ""
            outputTextField.stringValue = inputTextField.stringValue
        } else if codeSelectButton.titleOfSelectedItem == "Morse Code" {
            outputTextField.stringValue = ""
            outputTextField.stringValue = morseCode.translate(inputTextField.stringValue)
        } else if codeSelectButton.titleOfSelectedItem == "Numbers" {
            outputTextField.stringValue = ""
            outputTextField.stringValue = numberCode.translate(inputTextField.stringValue)
        }
    }

}

