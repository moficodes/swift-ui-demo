//
//  ContentView.swift
//  swiftuidemo
//
//  Created by Mofizur Rahman on 7/4/20.
//  Copyright © 2020 Mofizur Rahman. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)

            CircleImage(image: landmark.image)
                .offset(x: 0, y: -220)
                .padding(.bottom, -220)

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(Font.title)
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(Color.gray)
                        }
                    }
                }
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
            .environmentObject(UserData())
    }
}

 
// import SwiftUI
//
// struct LandmarkDetail: View {
//     @EnvironmentObject var userData: UserData
//     var landmark: Landmark
//
//     var landmarkIndex: Int {
//         userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
//     }
//
//     var body: some View {
//         VStack {
//             MapView(coordinate: landmark.locationCoordinate)
//                 .edgesIgnoringSafeArea(.top)
//                 .frame(height: 300)
//
//             CircleImage(image: landmark.image)
//                 .offset(x: 0, y: -130)
//                 .padding(.bottom, -130)
//
//             VStack(alignment: .leading) {
//                 HStack {
//                     Text(landmark.name)
//                         .font(.title)
//
//                     Button(action: {
//                         self.userData.landmarks[self.landmarkIndex]
//                             .isFavorite.toggle()
//                     }) {
//                         if self.userData.landmarks[self.landmarkIndex]
//                             .isFavorite {
//                             Image(systemName: "star.fill")
//                                 .foregroundColor(Color.yellow)
//                         } else {
//                             Image(systemName: "star")
//                                 .foregroundColor(Color.gray)
//                         }
//                     }
//                 }
//
//                 HStack(alignment: .top) {
//                     Text(landmark.park)
//                         .font(.subheadline)
//                     Spacer()
//                     Text(landmark.state)
//                         .font(.subheadline)
//                 }
//             }
//             .padding()
//
//             Spacer()
//         }
//     }
// }
//
// struct LandmarkDetail_Previews: PreviewProvider {
//     static var previews: some View {
//         let userData = UserData()
//         return LandmarkDetail(landmark: userData.landmarks[0])
//             .environmentObject(userData)
//     }
// }
