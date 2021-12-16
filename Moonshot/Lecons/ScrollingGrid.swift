//
//  ScrollingGrid.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/12/16.
//

import SwiftUI

struct ScrollingGrid: View {
    let layout = [ GridItem(.adaptive(minimum: 80, maximum: 120))]
    
//    let layout = [
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
//    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
//        ScrollView {
//            LazyVGrid(columns: layout) {
//                ForEach(0..<1000) {
//                    Text("Item \($0)")
//                }
//            }
//        }
    }
}

struct ScrollingGrid_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingGrid()
    }
}
