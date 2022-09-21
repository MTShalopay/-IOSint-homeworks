//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by Shalopay on 20.09.2022.
//

import UIKit

class ProfileCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    deinit {
        print("ProfileCoordinator Deinit")
    }
    func start() {
        print("ProfileCoordinator start")
    }
}
