//
//  ProfileHost.swift
//  swiftuidemo
//
//  Created by Mofizur Rahman on 7/6/20.
//  Copyright © 2020 Mofizur Rahman. All rights reserved.
//

 import SwiftUI

 struct ProfileHost: View {
     @Environment(\.editMode) var mode
     @EnvironmentObject var userData: UserData
     @State var draftProfile = Profile.default
     
     var body: some View {
         VStack(alignment: .leading, spacing: 20) {
             HStack {
                 Spacer()
                 
                 EditButton()
             }
             if self.mode?.wrappedValue == .inactive {
                 ProfileSummary(profile: userData.profile)
             } else {
                ProfileEditor(profile: $draftProfile)
             }
         }
         .padding()
     }
 }

 struct ProfileHost_Previews: PreviewProvider {
     static var previews: some View {
         ProfileHost().environmentObject(UserData())
     }
 }

