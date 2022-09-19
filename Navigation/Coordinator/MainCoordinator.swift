//
//  MainCoordinator.swift
//  Navigation
//
//  Created by Shalopay on 16.09.2022.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("MainCoordinator is start")
    }
}

