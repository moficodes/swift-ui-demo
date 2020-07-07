//
//  Profile.swift
//  swiftuidemo
//
//  Created by Mofizur Rahman on 7/6/20.
//  Copyright © 2020 Mofizur Rahman. All rights reserved.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotification: Bool
    var seasonalPhoto: Season
    var goalDate: Date
    
    static let `default` = Self(username: "g_kumar", prefersNotification: true, seasonalPhoto: .winter)
    
    init(username: String, prefersNotification: Bool = true, seasonalPhoto: Season = .winter) {
        self.username = username
        self.prefersNotification = prefersNotification
        self.seasonalPhoto = seasonalPhoto
        self.goalDate = Date()
    }
    
    enum Season: String, CaseIterable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
    }
}
