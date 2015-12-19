//
//  CoordinatorDelegate.swift
//  CoordinatorKit
//
//  Created by Andrew Monshizadeh on 12/19/15.
//  Copyright © 2015 Andrew Monshizadeh. All rights reserved.
//

import Foundation

public protocol CoordinatorDelegate {
    func coordinatorWillBegin(coordinator: Coordinator)
    func coordinatorDidBegin(coordinator: Coordinator)
    func coordinatorWillEnd(coordinator: Coordinator)
    func coordinatorDidEnd(coordinator: Coordinator)
}

public extension CoordinatorDelegate {
    func coordinatorWillBegin(coordinator: Coordinator) {}
    func coordinatorDidBegin(coordinator: Coordinator) {}
    func coordinatorWillEnd(coordinator: Coordinator) {}
    func coordinatorDidEnd(coordinator: Coordinator) {}
}
