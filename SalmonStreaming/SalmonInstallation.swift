//
//  SalmonInstallation.swift
//  Salmon
//
//  Created by Adam Rais on 28/08/2015.
//  Copyright (c) 2015 Adamgoodapp. All rights reserved.
//

import Foundation

class SalmonInstaller {

    func createStreamCommandFile() {
        if system("cd ~/salmon") != 0 {
            system("mkdir ~/salmon")
            system("touch ~/salmon/stream.command")
            system("chmod +x ~/salmon/stream.command")
        }
    }
    
    func checkInstallation() {
        runInstall()
    }
    
    func runInstall() {
        if system("/usr/local/bin/brew -v") == 0 {
            system("touch ~/salmon/install.command")
            system("chmod +x ~/salmon/install.command")
            system("curl -o ~/salmon/install.command https://s3-eu-west-1.amazonaws.com/salmonapp/Installation.command")
            system("open ~/salmon/install.command -j")
        }
    }
   
    
}