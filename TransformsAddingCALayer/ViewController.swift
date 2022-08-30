//
//  ViewController.swift
//  TransformsAddingCALayer
//
//  Created by JOYNAL ABEDIN on 28/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - properties
    var myLayer = CATextLayer()
    var oldView = CATextLayer()
    var myView = UIView()
    
    //MARK: - Init LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupMyViewInterface()
        setupMyLayerInterface()
        transformApplyExample()
    }
    
    //MARK: - Setup Initial interface
    func setupMyViewInterface(){
        self.view.backgroundColor = .brown
        myView.frame = CGRect(x: 50, y: 100, width: 250, height: 200)
        myView.backgroundColor = .lightGray
        self.view.addSubview(myView)
    }
    func setupMyLayerInterface(){
        myLayer.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        myLayer.backgroundColor = UIColor.blue.cgColor
        myLayer.string = "Swift"
        myView.layer.addSublayer(myLayer)
        
        oldView.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        oldView.backgroundColor = UIColor.blue.withAlphaComponent(0.2).cgColor
        oldView.string = "Swift"
        myView.layer.addSublayer(oldView)
        
    }
    
    func transformApplyExample(){
        
        let degrees = 30.0
        let radians = CGFloat(degrees * M_PI / 180)
        
        //myLayer.transform = CATransform3DMakeTranslation(100, 60, 0)
        //myLayer.transform = CATransform3DMakeScale(0.5, 3.0, 1.0)
        myLayer.transform = CATransform3DMakeRotation(radians, 0.0, 0.0, 1.0)
    }
    
}

