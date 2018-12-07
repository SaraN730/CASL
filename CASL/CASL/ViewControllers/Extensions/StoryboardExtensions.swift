//
//  StoryboardExtensions.swift
//  CASL
//
//  Created by Evan Anger on 12/7/18.
//  Copyright © 2018 Garage. All rights reserved.
//

import Foundation
import UIKit

struct StoryBoard {
    static let main = UIStoryboard(name: "Main", bundle: nil)
    static let login = UIStoryboard(name: "Login", bundle: nil)
    static let signup = UIStoryboard(name: "Signup", bundle: nil)
    static let forgotFlow = UIStoryboard(name: "ForgotFlow", bundle: nil)
}

extension UIViewController {
    class var storyboardId: String {
        return String(describing: self)
    }
}

extension UIStoryboard {
    func createViewController<T: UIViewController>() -> T {
        guard let viewController = instantiateViewController(withIdentifier: T.storyboardId) as? T else {
            fatalError("Cast error to \(T.self)")
        }
        return viewController
    }
}
