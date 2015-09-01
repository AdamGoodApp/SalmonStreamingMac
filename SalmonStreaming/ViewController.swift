//
//  ViewController.swift
//  SalmonStreaming
//
//  Created by Adam Rais on 31/08/2015.
//  Copyright (c) 2015 Adamgoodapp. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var magnetInput: NSTextField!
    @IBOutlet weak var playButtonTitle: NSButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if system("cd ~/salmon") != 0 {
            playButtonTitle.title = "Install"
        }
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func playButton(sender: AnyObject) {
        if system("cd ~/salmon") != 0 {
            SalmonInstaller().createStreamCommandFile()
            SalmonInstaller().checkInstallation()
            playButtonTitle.title = "Play"
        } else {
            Streamer().playStream(magnetInput.stringValue)
        }
    }

}

