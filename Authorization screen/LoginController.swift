//
//  LoginController.swift
//  Authorization screen
//
//  Created by Михаил Латий on 18.07.2023.
//

import UIKit

class LoginController: UIViewController {
    var viewModel = ViewModel()

    // MARK: - UI Elements
    private var loginView: LoginView? {
        guard isViewLoaded else { return nil }
        return view as? LoginView
    }

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view = LoginView()
        bindViewModel()
        buttonAction()
    }

    // MARK: - Setup
    private func bindViewModel() {
        viewModel.statusText.bind { text in
            DispatchQueue.main.async {
                self.loginView?.statusLabel.text = text

                if self.loginView?.loginField.text == "Patrick123" && self.loginView?.passwordField.text == "12345" {
                    self.goToDetailPage()
                }
            }
        }
    }

    private func buttonAction() {
        loginView?.loginButton.addTarget(self, action: #selector(add), for: .touchUpInside)
    }

    private func goToDetailPage() {
        let viewController = DetailViewController()
        if let  navigator = navigationController {
            navigator.pushViewController(viewController, animated: true)
        }
    }

    // MARK: - Action
   @objc func add() {
       let login = loginView?.loginField.text
       let password = loginView?.passwordField.text
       viewModel.buttonPressed(login: login ?? "", password: password ?? "")
    }
}

