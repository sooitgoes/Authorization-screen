//
//  UserAccount.swift
//  Authorization screen
//
//  Created by Михаил Латий on 18.07.2023.
//

import Foundation

struct UserAccount {
    let login: String?
    let password: String?
}

extension UserAccount {
    static let userData = [
        UserAccount(login: "Patrick123", password: "12345")
    ]
}
