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
            .aspectRatio(1, contentMode: .fit)
            .frame(width: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            
            Text("Bulbassaur ")
                .bold()
                .font(.system(size: 17))
            HStack {
                LabelTypeView(name: "Grass", color: Color.green)
                LabelTypeView(name: "Grass", color: Color.blue)
            }
        }
        
    }
}

struct PokemonItemView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonItemView()
    }
}
