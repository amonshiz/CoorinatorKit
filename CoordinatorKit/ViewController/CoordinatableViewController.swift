//
//  CoordinatableViewController.swift
//  dungeon-game
//
//  Created by Andrew Monshizadeh on 10/11/15.
//  Copyright © 2015 Andrew Monshizadeh. All rights reserved.
//

import UIKit

public protocol CoordinatableViewController {
    var coordinationDelegate: ViewControllerCoordinator? { get }
}
