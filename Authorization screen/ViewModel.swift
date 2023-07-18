//
//  ViewModel.swift
//  Authorization screen
//
//  Created by Михаил Латий on 18.07.2023.
//

import Foundation

class ViewModel {
    var statusText = Dynamic("")
    
    func buttonPressed(login: String, password: String) {
        let userData = UserAccount.userData

        userData.forEach { data in
            if login != data.login || password != data.password {
                statusText.value = "Invalid login or password. Please try again."
            } else {
                statusText.value = ""
            }
        }
    }
}


