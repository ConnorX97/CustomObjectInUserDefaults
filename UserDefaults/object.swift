//
//  object.swift
//  UserDefaults
//
//  Created by Sherzod Fayziev on 2022/05/14.
//   firstname, lastname, email, phone, address

import Foundation


struct User: Codable {
    var firstname : String
    var lastname  : String
    var email     : String
    var phone     : String
    var address   : String

}
