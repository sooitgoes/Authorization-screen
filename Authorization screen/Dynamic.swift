//
//  Dynamic.swift
//  Authorization screen
//
//  Created by Михаил Латий on 18.07.2023.
//

import Foundation

class Dynamic<T> {
    typealias Listener = (T) -> Void
    private var listener: Listener?

    init(value: T) {
        self.value = value
    }

    func bind(_ listener: Listener?) {
        self.listener = listener
    }

    var value: T {
        didSet {
            listener?(value)
        }
    }
}
