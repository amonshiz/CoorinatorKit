//
//  CoordinatedViewController.swift
//  CoordinatorKit
//
//  Created by Andrew Monshizadeh on 12/19/15.
//  Copyright © 2015 Andrew Monshizadeh. All rights reserved.
//

import UIKit

public class CoordinatedViewController : UIViewController, CoordinatableViewController {
    public var coordinationDelegate: ViewControllerCoordinator?

    override public func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        guard let del = coordinationDelegate else {return}
        del.viewController(self, willAppearAnimated: animated)
    }

    override public func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        guard let del = coordinationDelegate else {return}
        del.viewController(self, didAppearAnimated: animated)
    }

    override public func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)

        guard let del = coordinationDelegate else {return}
        del.viewController(self, willDisappearAnimated: animated)
    }

    override public func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        guard let del = coordinationDelegate else {return}
        del.viewController(self, didDisappearAnimated: animated)
    }
}

