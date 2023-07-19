//
//  LoginView.swift
//  Authorization screen
//
//  Created by Михаил Латий on 18.07.2023.
//

import UIKit

class LoginView: UIView {

    // MARK: - UI Elements
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login screen"
        label.textColor = .white
        label.font = .systemFont(ofSize: 30, weight: .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var loginField: UITextField = {
        let loginField = UITextField()
        loginField.placeholder = "Patrick123"
        loginField.textAlignment = .center
        loginField.font = .systemFont(ofSize: 15)
        loginField.backgroundColor = .white
        loginField.layer.masksToBounds = true
        loginField.layer.cornerRadius = 20
        loginField.tintColor = .black
        return loginField
    }()

    lazy var passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.placeholder = "Password"
        passwordField.textAlignment = .center
        passwordField.font = .systemFont(ofSize: 15)
        passwordField.backgroundColor = .white
        passwordField.layer.masksToBounds = true
        passwordField.isSecureTextEntry = true
        passwordField.layer.cornerRadius = 20
        passwordField.tintColor = .black
        return passwordField
    }()

    lazy var loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.masksToBounds = true
        loginButton.layer.cornerRadius = 20
        loginButton.backgroundColor = .systemIndigo
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()

    lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.textColor = .systemRed
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 20
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    // MARK: - Initiaziers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
        backgroundColor = .gray
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup
    private func setupHierarchy() {
        stackView.addArrangedSubview(loginField)
        stackView.addArrangedSubview(passwordField)
        addSubview(loginLabel)
        addSubview(stackView)
        addSubview(loginButton)
        addSubview(statusLabel)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginLabel.topAnchor.constraint(equalTo: topAnchor, constant: 150),

            stackView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 100),
            stackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 50),
            stackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -50),

            loginField.heightAnchor.constraint(equalToConstant: 44),
            passwordField.heightAnchor.constraint(equalToConstant: 44),

            statusLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 80),
            statusLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 50),
            statusLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -50),

            loginButton.topAnchor.constraint(equalTo: statusLabel.topAnchor, constant: 80),
            loginButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 50),
            loginButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: 44),
        ])
    }
}
