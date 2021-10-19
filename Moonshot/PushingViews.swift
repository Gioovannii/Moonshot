//
//  PushingViews.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/19.
//

import SwiftUI

struct PushingViews: View {
    var body: some View {
        
        NavigationView {
            VStack {
                List(0..<100) { row in
                    NavigationLink(destination: Text("Detail \(row)")) {
                        Text("Row \(row)")
                            .font(.title2)
                    }
                }
            }
            .navigationTitle("Swift UI")
        }
    }
}

struct PushingViews_Previews: PreviewProvider {
    static var previews: some View {
        PushingViews()
    }
}
