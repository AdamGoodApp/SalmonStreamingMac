//
//  AppDelegate.swift
//  SalmonStreaming
//
//  Created by Adam Rais on 31/08/2015.
//  Copyright (c) 2015 Adamgoodapp. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
        Streamer().cleanStreamFolder()
    }


}

