//
//  ScrollView.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/19.
//

import SwiftUI

struct CustomText: View {
    var text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new text")
        self.text = text
    }
}

struct ScrollViewLecon: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewLecon()
    }
}
