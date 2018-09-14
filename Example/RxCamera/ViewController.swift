//
//  ViewController.swift
//  RxCamera
//
//  Created by Aquima on 09/14/2018.
//  Copyright (c) 2018 Aquima. All rights reserved.
//

import UIKit
import RxCamera
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let camera:RxCoreCamera = RxCoreCamera()
        
        print(camera.myLocalNumber)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

