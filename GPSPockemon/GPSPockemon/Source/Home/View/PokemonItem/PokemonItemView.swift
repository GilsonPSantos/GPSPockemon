//
//  PokemonItemView.swift
//  GPSPockemon
//
//  Created by Gilson Santos on 09/04/20.
//  Copyright © 2020 Gilson Santos. All rights reserved.
//

import SwiftUI

struct PokemonItemView: View {
    var body: some View {
        VStack {
            Image("bullbassauro")
                .resizable()
                .frame(width: 150, height: 150, alignment: .leading)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            Text("Bulbassaur")
                .bold()
                .font(.title)
            HStack {
                Text("Grass")
                    .padding(5)
                    .background(Color.green)
                Text("Paison")
                    .padding(5)
                    .background(Color.blue)
            }
        }.padding()  
    }
}

struct PokemonItemView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonItemView()
    }
}
