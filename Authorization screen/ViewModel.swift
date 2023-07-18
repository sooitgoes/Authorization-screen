//
//  ViewModel.swift
//  Authorization screen
//
//  Created by Михаил Латий on 18.07.2023.
//

import Foundation

class ViewModel {
    var statusText = Dynamic("hello")
    
    func buttonPressed(login: String, password: String) {
        if login != UserAccount.userData[0].login || password != UserAccount.userData[0].password {
            statusText.value = "Invalid login or password. Please try again."
        } else {
            statusText.value = ""
        }
    }
}


