//
//  BViewController.swift
//  ModuleManager_Example
//
//  Created by huluobo on 2018/9/28.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import ModuleManager

struct ModuleB {
    static func start() {
        //        ModuleManager.register(BViewController.self, for: BVCType.self)
        
        ModuleManager.shared.register(for: BVCType.self) { data in
            let vc = BViewController()
            if let data = data as? [String: Any] {
                print("data: ", data)
                vc.title = data["title"] as? String
            }
            vc.view.backgroundColor = UIColor.red
            return vc
        }
    }
}

class BViewController: UIViewController, BVCType {
    func hello() {
        print("🤪")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
