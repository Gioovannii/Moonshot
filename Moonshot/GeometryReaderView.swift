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
            Image("Lion")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
          
    }
}
