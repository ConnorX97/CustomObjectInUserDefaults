//
//  defaults.swift
//  UserDefaults
//
//  Created by Sherzod Fayziev on 2022/05/14.
//

import Foundation

struct Default {
    
    static let defaults = Foundation.UserDefaults.standard
    
    static func storeUser(user: User) {
        let encoder = JSONEncoder()
        if let encodedUser = try? encoder.encode(user) {
            defaults.set(encodedUser, forKey: "user")
        }
    }
    
    static func loadUser()-> User! {
        if let savedUserData = defaults.object(forKey: "user") as? Data {
            let decoder = JSONDecoder()
            if let savedUser = try? decoder.decode(User.self, from: savedUserData) {
                return savedUser
            }
        }
        return nil
    }
    
    
    
}
