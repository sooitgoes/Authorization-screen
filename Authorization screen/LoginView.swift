//
//  LoginView.swift
//  Authorization screen
//
//  Created by Михаил Латий on 18.07.2023.
//

import UIKit

class LoginView: UIView {

    // MARK: - UI Elements
    private lazy var loginLabel: UILabel = {
        let login = UILabel()
        login.text = "Login screen"
        login.textColor = .lightGray
        login.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        login.translatesAutoresizingMaskIntoConstraints = false
        return login
    }()

    private lazy var loginField: UITextField = {
        let loginField = UITextField()
        loginField.placeholder = "Patrick123"
        loginField.font = UIFont.systemFont(ofSize: 15)
        loginField.backgroundColor = .white
        loginField.layer.cornerRadius = 25
        loginField.tintColor = .black
        loginField.translatesAutoresizingMaskIntoConstraints = false
        return loginField
    }()

    private lazy var passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.font = UIFont.systemFont(ofSize: 15)
        passwordField.backgroundColor = .white
        passwordField.layer.cornerRadius = 25
        passwordField.tintColor = .black
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        return passwordField
    }()

    private lazy var loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .cyan
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()

    private lazy var statusLabel: UILabel = {
        let login = UILabel()
        login.textColor = .black
        login.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        login.translatesAutoresizingMaskIntoConstraints = false
        return login
    }()

    // MARK: - Initiaziers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup
    private func setupHierarchy() {

    }

    private func setupLayout() {
        NSLayoutConstraint.activate([

        ])
    }
}
