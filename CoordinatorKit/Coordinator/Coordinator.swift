//
//  Coordinator.swift
//  dungeon-game
//
//  Created by Andrew Monshizadeh on 10/11/15.
//  Copyright © 2015 Andrew Monshizadeh. All rights reserved.
//

import UIKit

public class Coordinator {
    private struct AliveMapper {
        var aliveCounts: [String : Int] = [:]
    }

    public let navigationController: UINavigationController
    public var childCoordinators = [Coordinator]()
    public var delegate: CoordinatorDelegate?

    public init(navigationController: UINavigationController, delegate: CoordinatorDelegate?) {
        self.navigationController = navigationController
        self.delegate = delegate

        self.dynamicType.incrementNumAlive(1)
    }

    private static var numAlive: AliveMapper = AliveMapper()
    private static func incrementNumAlive(amount: Int) {
#if DEBUG
        let s = "\(self)"
        let aliveCount: Int
        if let c = numAlive.aliveCounts[s] {
            aliveCount = c
        } else {
            aliveCount = 0
        }
        numAlive.aliveCounts[s] = aliveCount + amount
        print("\(s) numAlive: \(aliveCount + amount)")
#endif
    }

    deinit {
        self.dynamicType.incrementNumAlive(-1)
    }
}

extension Coordinator : Equatable {}
public func ==(lhs: Coordinator, rhs: Coordinator) -> Bool {
    return lhs.navigationController.isEqual(rhs.navigationController) && (lhs.childCoordinators == rhs.childCoordinators)
}

extension Coordinator : Hashable {
    public var hashValue : Int {
        get {
            return self.navigationController.hashValue ^ (self.childCoordinators as NSArray).hashValue
        }
    }
}

extension Coordinator {
    public func removeChildCoordinator(c: Coordinator) -> (Array<Coordinator>.Index?, Coordinator) {
        guard let index = self.childCoordinators.indexOf(c) else {return (nil, c)}
        self.childCoordinators.removeAtIndex(index)
        return (index, c)
    }
}
