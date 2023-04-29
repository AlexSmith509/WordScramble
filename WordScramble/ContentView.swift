//
//  ContentView.swift
//  WordScramble
//
//  Created by Alex Smith on 4/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Enter your word", text: $newWord)
                }

                Section {
                    ForEach(usedWords, id: \.self) { word in
                        Text(word)
                    }
                }
            }
            .navigationTitle(rootWord)
        }
//        func addNewWord() {
//            let answer =  newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
//            guard answer.count > 0 else
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
