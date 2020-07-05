//
//  ContentView.swift
//  swiftuidemo
//
//  Created by Mofizur Rahman on 7/4/20.
//  Copyright © 2020 Mofizur Rahman. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300).edgesIgnoringSafeArea(.top)
            
            CircleImage()
                .offset(y: -240)
                .padding(.bottom, -240)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(Font.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
