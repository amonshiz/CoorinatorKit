//
//  Coordinationable.swift
//  CoordinatorKit
//
//  Created by Andrew Monshizadeh on 12/19/15.
//  Copyright © 2015 Andrew Monshizadeh. All rights reserved.
//

import Foundation

public protocol Coordinationable {
    func begin() -> Void
}

extension Coordinationable {
    func begin() {
        fatalError("This method must be implemented!")
    }
}