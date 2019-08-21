//
//  AppContext.swift
//  WeChatSwift
//
//  Created by xu.shuifeng on 2019/7/4.
//  Copyright © 2019 alexiscn. All rights reserved.
//

import Foundation

class AppContext {
    
    static let current = AppContext()
    
    let userID: String
    
    let name: String
    
    let userSettings: UserSettings
    
    private init() {
        let me = MockFactory.shared.users.first!
        userID = me.identifier
        name = me.name
        userSettings = UserSettings(userID: userID)
    }
    
    var userProfileService = UserProfileService()
    
    var emoticonMgr = EmoticonManager()
    
    func doHeavySetup() {
        DispatchQueue.global(qos: .background).async {
            self.emoticonMgr.setup()
        }
    }
}
