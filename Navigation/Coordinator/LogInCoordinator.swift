//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by Shalopay on 20.09.2022.
//

import UIKit

class LogInCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    deinit {
            print("LogInCoordinator Deinit")
    }
    
    func start() {
        print("LogInCoordinator start")
        let loginVC = LogInViewController()
        
        //Delegat
        //loginVC.loginDelegate = LoginInspector()
        //Factory
        let factory = MyLoginFactory()
        loginVC.loginDelegate = factory.makeLoginInspector()
        navigationController.pushViewController(loginVC, animated: false)
    }
    
    
}
