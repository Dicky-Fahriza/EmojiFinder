//
//  HeaderView.swift
//  EmojiFinder
//
//  Created by MacBook Pro on 17/04/24.
//

import SwiftUI

struct HeaderView: View {
    var emoji: Emoji
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            RandomColor.bgView()
            
            Text(emoji.emoji)
                .font(.system(size:255))
                .shadow(color: Color(
                    red: 0,
                    green: 0,
                    blue: 0,
                    opacity: 0.5),
                        radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
                 }
                .frame(height: 440)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating.toggle()
                    }
                }
        }
}

#Preview {
    HeaderView(emoji: EmojiProvider.allEmojis().last!)
}
