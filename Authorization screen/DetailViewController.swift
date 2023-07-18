//
//  DetailViewController.swift
//  Authorization screen
//
//  Created by Михаил Латий on 18.07.2023.
//

import UIKit

class DetailViewController: UIViewController {

//    // MARK: - UI Elements
    private lazy var greetingLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome !"
        label.font = .systemFont(ofSize: 30, weight: .heavy)
        label.textColor = .systemBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .brown
        setupHierarchy()
        setupLayout()
        setupNavigationController()
    }
//
//    // MARK: - Setup
    private func setupHierarchy() {
        view.addSubview(greetingLabel)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greetingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    func setupNavigationController() {
        let image = UIImage(systemName: "arrow.down")

        navigationController?.navigationBar.tintColor = .systemBlue
        navigationItem.setLeftBarButton(UIBarButtonItem(
            title: nil,
            image: image,
            primaryAction: UIAction(handler: { _ in self.navigationController?.popViewController(animated: true) }),
            menu: nil), animated:  true)
    }
}
