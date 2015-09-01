//
//  Streamer.swift
//  Salmon
//
//  Created by Adam Rais on 28/08/2015.
//  Copyright (c) 2015 Adamgoodapp. All rights reserved.
//

import Foundation

class Streamer {
    
    func playStream(magnet:String) {
        system("echo peerflix \"'\(magnet)'\" --vlc > ~/salmon/stream.command")
        system("chmod +x ~/salmon/stream.command")
        system("open ~/salmon/stream.command -j")
    }
    
    func cleanStreamFolder() {
        system("rm -rf /tmp/torrent-stream/")
    }
    
}