//
//  ModuleObject.swift
//  ModuleManager
//
//  Created by huluobo on 2018/6/12.
//

import Foundation

public protocol ModuleObjectProtocol {
    static func instance() -> Self
}


public extension ModuleObjectProtocol where Self: NSObject {
    static func instance() -> Self {
        return Self.init()
    }
}
