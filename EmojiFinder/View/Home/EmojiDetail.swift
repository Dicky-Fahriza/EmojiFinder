//
//  EmojiDetail.swift
//  EmojiFinder
//
//  Created by MacBook Pro on 17/04/24.
//

import SwiftUI

struct EmojiDetail: View {
    var emoji: Emoji
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                HeaderView(emoji: emoji)
                
                HStack {
                    VStack(alignment: .leading, spacing: 24) {
                        Text("Emoji name:\(emoji.name)")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Text(emoji.description)
                        
                        InfoBox()
                    }
                    Spacer()
                }
                .padding()
            }
            .navigationTitle(emoji.name)
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    EmojiDetail(emoji: EmojiProvider.allEmojis().first!)
}
