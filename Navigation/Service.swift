//
//  Protocols.swift
//  Navigation
//
//  Created by Shalopay on 31.08.2022.
//

import Foundation

struct MyLoginFactory: LoginFactory {
    func makeLoginInspector() -> LoginInspector {
        LoginInspector()
    }
}
