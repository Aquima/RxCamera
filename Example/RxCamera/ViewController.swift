//
//  ViewController.swift
//  RxCamera
//
//  Created by Aquima on 09/14/2018.
//  Copyright (c) 2018 Aquima. All rights reserved.
//

import UIKit
import RxSwift
import RxCamera

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.view.addSubview(btnDraw)
        
        let camera:RxCoreCamera = RxCoreCamera()
        camera.frame = self.view.frame
        self.view.addSubview(camera)
        print(camera.myLocalNumber)
        camera.drawBtnShooter(title: "take", color: UIColor.red)
        camera.addActions()
//        view.rx.ge
    }
    @IBAction func loadCamera(sender:UIButton){
        
   
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK- : UI Elements
    let btnDraw:UIButton = {
        let button:UIButton = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
        button.backgroundColor = UIColor.purple
        button.addTarget(self, action: #selector(loadCamera(sender:)), for: .touchUpInside)
        return button
    }()
}

