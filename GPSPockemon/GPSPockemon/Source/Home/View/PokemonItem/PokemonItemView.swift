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
        
        HStack {
            
            Image(systemName: "bullbassauro")
            .resizable()
                .frame(width: 100, height: 100, alignment: .leading)
            .clipShape(Circle())
                .background(Color.black)
            Spacer()
            
            
        }.padding()
        
        
    }
}

struct PokemonItemView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonItemView()
    }
}
