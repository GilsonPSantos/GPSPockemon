//
//  DetailView.swift
//  GPSPockemon
//
//  Created by Gilson Pitanga Dos Santos on 10/04/20.
//  Copyright © 2020 Gilson Santos. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        GeometryReader { metrics in
            ScrollView(.vertical) {
                VStack {
                    Image("bulbassouroFull")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: metrics.size.width / 2)
                    .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                }.padding()
                    .edgesIgnoringSafeArea(.top)
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
