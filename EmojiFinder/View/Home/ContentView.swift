//
//  ContentView.swift
//  EmojiFinder
//
//  Created by MacBook Pro on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var emojis: [Emoji] = EmojiProvider.allEmojis()
    
    @State private var searchText: String = ""
    @State private var isRedacted: Bool = true
    
    
    var emojiSearchResults: [Emoji] {
        guard !searchText.isEmpty else {
            return emojis
        }
        return emojis.filter { emoji in
            emoji.name.lowercased()
                .contains(searchText.lowercased())
        }
    }
    
    
    
    
    var body: some View {
        NavigationStack {
            List(emojiSearchResults) { emoji in
                NavigationLink {
                    EmojiDetail(emoji: emoji)
                } label: {
                    if isRedacted {
                        EmojiRow(emoji: emoji)
                            .redacted(reason: .placeholder)
                    } else {
                        EmojiRow(emoji: emoji)
                    }
                }
//                EmojiRow(emoji: emoji)
//             .listRowSeparator(.hidden)
            }
            .navigationTitle("Emoji")
            
            .refreshable {
                isRedacted = true
                
                let newRow =
                EmojiProvider.allEmojis()
                    .randomElement()
                emojis.insert(newRow!, at: 0)
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isRedacted = false
                }
            }
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isRedacted = false
                }
            }
            
            .searchable(text: $searchText, placement:  .navigationBarDrawer(displayMode: .always),
                        prompt: "What emoji's that you're looking for?"
            )
            .overlay {
                if emojiSearchResults.isEmpty {
                    ContentUnavailableView.search(text: searchText)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
