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
    var action: (() -> Void)?
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("MainCoordinator is start")
        setup()
        
    }
    deinit {
            print("MainCoordinator Deinit")
    }
    
    private func setup() {
        let tabBarController = UITabBarController()
        let feedNavigationController = UINavigationController()
        let feedCoordinator = FeedCoordinator(navigationController: feedNavigationController)
        feedCoordinator.parentCoordinator = self
        
        let FeedItem = UITabBarItem()
        FeedItem.title = "Лента"
        FeedItem.image = UIImage.init(systemName: "book")
        feedNavigationController.tabBarItem = FeedItem
        
        let logInNavigationController = UINavigationController()
        let logInCoordinator = LogInCoordinator(navigationController: logInNavigationController)
        logInCoordinator.parentCoordinator = self
        let logInItem = UITabBarItem()
        logInItem.title = "Профиль"
        logInItem.image = UIImage.init(systemName: "person.crop.square")
        logInNavigationController.tabBarItem = logInItem
        
        tabBarController.viewControllers = [feedNavigationController, logInNavigationController]
        navigationController.pushViewController(tabBarController, animated: true)
        navigationController.setNavigationBarHidden(true, animated: false)
        
        parentCoordinator?.children.append(feedCoordinator)
        parentCoordinator?.children.append(logInCoordinator)
        feedCoordinator.start()
        logInCoordinator.start()
    }
}


