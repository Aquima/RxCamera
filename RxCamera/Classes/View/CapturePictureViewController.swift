//
//  CapturePictureViewController.swift
//  RxCamera
//
//  Created by Raul Quispe on 9/20/18.
//

import UIKit
import RxSwift
import RxCocoa
/**
 This class is for load a UI for interact with user and shoot to capture picture from Camera.
 */
public class CapturePictureViewController: UIViewController {
    // MARK: - Private var
    private let disposeBag:DisposeBag = DisposeBag()
    private var isLightOn:Bool = false
    // MARK: - LifeCycle
    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: - UI Elements
   
    /**
     This a func for add UI Elements for default for my basic interaction with camera
     - Author: Raul Quispe
     - Parameters:
        - shooter: This is a button for shoot a camera for capture picture.
        - light: This is a button for
        - logo: Image for your brand for default is a logo.png
     */
    public func addUIElements(shooter:UIButton = UIButton(),light:UIButton = UIButton(),logo:UIImageView = UIImageView(image: UIImage(named: "logo.png"))){
        
        shooter.rx.tap.bind {
            // dispatch with subject a observable shooter
            #if DEBUG
                Swift.print("this is a debug shoot!")
            #endif
        }.disposed(by: disposeBag)
        
        light.rx.tap.bind {
            self.isLightOn = !self.isLightOn
            // dispatch with subject a observable shooter
            #if DEBUG
            Swift.print("this is a light\(self.isLightOn)")
            #endif
            }.disposed(by: disposeBag)
//        logo.rx.isHidden = Observable<Bool>.asObservable(<#T##Observable<Bool>#>)
        
        
    }
    
    // MARK: - Actions
    
    // MARK: - Navigation
    

}
