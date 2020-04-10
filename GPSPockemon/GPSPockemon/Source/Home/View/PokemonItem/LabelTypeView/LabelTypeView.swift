//
//  LabelTypeView.swift
//  GPSPockemon
//
//  Created by Gilson Pitanga Dos Santos on 09/04/20.
//  Copyright © 2020 Gilson Santos. All rights reserved.
//

import SwiftUI

struct LabelTypeView: View {
    let name: String
    let color: Color
    var body: some View {
        Text(name)
            .font(.system(size: 12))
            .padding(5)
            .background(color)
            .foregroundColor(Color.white)
            
    }
}

struct LabelTypeView_Previews: PreviewProvider {
    static var previews: some View {
        LabelTypeView(name: "Grass", color: Color.green)
    }
}
