//
//  ViewControllerCoordinator.swift
//  CoordinatorKit
//
//  Created by Andrew Monshizadeh on 12/19/15.
//  Copyright © 2015 Andrew Monshizadeh. All rights reserved.
//

import UIKit

public protocol ViewControllerCoordinator {
    func viewController(viewController: UIViewController, willAppearAnimated: Bool)
    func viewController(viewController: UIViewController, didAppearAnimated: Bool)
    func viewController(viewController: UIViewController, willDisappearAnimated: Bool)
    func viewController(viewController: UIViewController, didDisappearAnimated: Bool)
}

public extension ViewControllerCoordinator {
    func viewController(viewController: UIViewController, willAppearAnimated: Bool) {}
    func viewController(viewController: UIViewController, didAppearAnimated: Bool) {}
    func viewController(viewController: UIViewController, willDisappearAnimated: Bool) {}
    func viewController(viewController: UIViewController, didDisappearAnimated: Bool) {}
}

