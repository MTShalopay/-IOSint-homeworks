//
//  Checker.swift
//  Navigation
//
//  Created by Shalopay on 31.08.2022.
//

import Foundation

class Checker {
    static let shared = Checker()
    private let login: String = "qq"
    private let password: String = "qq"
    
    private init() { }
    
    func check(login: String, password: String) -> Bool {
        guard self.login == login, self.password == password else { return false}
        return true
    }
}

