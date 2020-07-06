//
//  UserData.swift
//  swiftuidemo
//
//  Created by Mofizur Rahman on 7/5/20.
//  Copyright © 2020 Mofizur Rahman. All rights reserved.

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}

