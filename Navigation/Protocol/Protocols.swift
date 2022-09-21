//
//  Protocols.swift
//  Navigation
//
//  Created by Shalopay on 16.09.2022.
//

import Foundation
import UIKit

protocol UserService {
    func logIn(login: String, password: String) -> User?
}

protocol LoginViewControllerDelegate: AnyObject {
    func check(login: String, password: String) -> Bool
}

protocol LoginFactory {
    func makeLoginInspector() -> LoginInspector
}

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}


