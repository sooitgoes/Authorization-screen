//
//  LoginController.swift
//  Authorization screen
//
//  Created by Михаил Латий on 18.07.2023.
//

import UIKit

class LoginController: UIViewController {
    var viewModel = ViewModel()

    private var loginView: LoginView? {
        guard isViewLoaded else { return nil }
        return view as? LoginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = LoginView()
        bindViewModel()
    }

    private func bindViewModel() {

    }


}

