//
//  ViewController.swift
//  ModuleManager
//
//  Created by huluobo on 03/12/2018.
//  Copyright (c) 2018 huluobo. All rights reserved.
//

import UIKit
import ModuleManager

protocol BVCType {
    func hello()
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let bvc = ModuleManager.shared.object(for: BVCType.self/*, parameter: ["title": "BVC"]*/)
        bvc.hello()
        navigationController?.pushViewController(bvc as! UIViewController, animated: true)
    }
}
