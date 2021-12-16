//
//  GeometryReaderView.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/19.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { geo in
            Image("sob")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
