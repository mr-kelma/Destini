//
//  StorySound.swift
//  Destini
//
//  Created by Valery Keplin on 10.06.22.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer!

func playSound() {
    let url = Bundle.main.url(forResource: "sound", withExtension: "mp3")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
}
