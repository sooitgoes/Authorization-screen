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
        label.font = .systemFont(ofSize: 50, weight: .heavy)
        label.textColor = .systemBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var image: UIImageView = {
        let image = UIImage(named: "Patrick")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setupHierarchy()
        setupLayout()
        setupNavigationController()
    }
//
//    // MARK: - Setup
    private func setupHierarchy() {
        view.addSubview(greetingLabel)
        view.addSubview(image)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            greetingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            greetingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.bottomAnchor.constraint(equalTo: greetingLabel.topAnchor, constant: -10)
        ])
    }

    func setupNavigationController() {
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", image: nil)
    }
}
