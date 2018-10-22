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

extension NSObject: ModuleObjectProtocol {}

protocol Savable: NSCoding {
    var pathToSaved: String { get set }
}

extension Savable {
    func save() {
        //let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!.appending("/user.data")
        NSKeyedArchiver.archiveRootObject(self, toFile: pathToSaved)
    }
}

extension ModuleObjectProtocol where Self: Savable {
    static func instance() -> Self {
        let path = ""
        return NSKeyedUnarchiver.unarchiveObject(withFile: path) as! Self
    }
}
