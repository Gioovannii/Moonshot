//
//  GeometryReaderView.swift
//  Moonshot
//
//  Created by Giovanni Gaffé on 2021/10/19.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image("Lion")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width)
            }
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
