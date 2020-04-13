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
        ScrollView(.vertical) {
            GeometryReader { geometry in
                Image("bulbassouroFull")
                    .resizable()
//                .scaledToFit()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: self.getHeightForHeaderImage(geometry))
                    .blur(radius: self.getBlurRadiusForImage(geometry))
                    .clipped()
                    .offset(x: 0, y: self.getOffsetForHeaderImage(geometry))
            }.frame(height: 200)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
    }
    
    private func getOffsetForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = self.getScrollOffset(geometry)
        if offset > 0 {
            return -offset
        }
        return 0
    }
    
    private func getScrollOffset(_ geometry: GeometryProxy) -> CGFloat {
        geometry.frame(in: .global).minY
    }
    
    private func getHeightForHeaderImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = getScrollOffset(geometry)
        let imageHeight = geometry.size.height

        if offset > 0 {
            return imageHeight + offset
        }

        return imageHeight
    }
    
    private func getBlurRadiusForImage(_ geometry: GeometryProxy) -> CGFloat {
        let offset = geometry.frame(in: .global).maxY
        let height = geometry.size.height
        let blur = (height - max(offset, 0)) / height
        return blur * 6
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
