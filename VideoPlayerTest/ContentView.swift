//
//  ContentView.swift
//  VideoPlayerTest
//
//  Created by Loren Olson on 10/17/24.
//

import SwiftUI
import AVKit


struct ContentView: View {
    @State var player = AVPlayer(url: Bundle.main.url(forResource: "Eye",
                                                      withExtension: "mp4")!)
    @State var isPlaying: Bool = false
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                //.frame(width: 320, height: 180, alignment: .center)


            Button {
                isPlaying ? player.pause() : player.play()
                isPlaying.toggle()
                player.seek(to: .zero)
            } label: {
                Image(systemName: isPlaying ? "stop" : "play")
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
