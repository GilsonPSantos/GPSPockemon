//
//  ContentView.swift
//  GPSPockemon
//
//  Created by Gilson Santos on 29/03/20.
//  Copyright © 2020 Gilson Santos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach(0..<10) {_ in
                    HStack(spacing: 30) {
                        ForEach(0..<2) { _ in
                            PokemonItemView()
                        }
                    }
                }
            }.frame(minWidth: 0, maxWidth: .infinity, alignment: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
