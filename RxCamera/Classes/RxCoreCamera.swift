//
//  RxCoreCamera.swift
//  RxCamera
//
//  Created by Raul Quispe on 9/14/18.
//

import UIKit
import RxSwift
import RxCocoa

public class RxCoreCamera: UIView {
    public var myLocalNumber = 7
    let disposeBag:DisposeBag = DisposeBag()
    public func loadCamera(){
        
    }
    public func drawBtnShooter(title:String,color:UIColor,frame:CGRect = CGRect(x: 0, y: 0, width: 100, height: 40)){
        btnShooter.frame = frame
        btnShooter.backgroundColor = color
        btnShooter.setTitle(title, for: .normal)
        self.addSubview(btnShooter)
    }
    // MARK: - Actions
    public func addActions(){
        btnShooter.rx.tap.bind {
            print("shoot photo")
        }.disposed(by: disposeBag)
    }
    @IBAction func pressShooter(sender:UIButton){
       
    }
    // MARK: - UI Elements
    public var btnShooter:UIButton = {
        let button = UIButton()
        //button.addTarget(self, action: #selector(pressShooter(sender:)), for: .touchUpInside)
        return button
    }()
}
