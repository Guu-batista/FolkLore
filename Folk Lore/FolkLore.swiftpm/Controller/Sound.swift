//
//  Sound.swift
//  FolkLore
//
//  Created by Gustavo Batista on 13/04/23.
//

import SwiftUI
import AVFAudio

class Music: ObservableObject {
    @Published var audioPlayer: AVAudioPlayer?
    
//    func musica(_ soundFileName: String) {
//        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
//            fatalError("Nenhuma musica foi encontrada!")
//        }
//        do{
//            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
//        } catch {
//            print(error.localizedDescription)
//        }
//        if let audioPlayer{
//            audioPlayer.numberOfLoops = -1
//            audioPlayer.play()
//        }
//    }
    
    func efeito(_ soundFileName: String) {
        guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
            fatalError("Nenhum efeito foi encontrado!")
        }
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
        } catch {
            print(error.localizedDescription)
        }
        if let audioPlayer{
            audioPlayer.numberOfLoops = 0
            audioPlayer.play()
        }
    }
    
    
    
    
    
}
