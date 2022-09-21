//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by Shalopay on 20.09.2022.
//

import UIKit

class FeedCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    deinit {
            print("FeedCoordinator Deinit")
    }
    
    func start() {
        print("FeedCoordinator start")
        let vc = FeedViewController()
        navigationController.pushViewController(vc, animated: false)
    }
}
