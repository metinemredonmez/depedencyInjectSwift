//
//  ViewController.swift
//  AppDependency
//
//  Created by Metin Donmez on 21.08.2022.
//

import UIKit
import Swinject

class ViewController: UIViewController {
    
    // swinject kodları
    let container : Container = {
        let contanier  = Container()
        contanier.register(BackgroundProvidingClass.self) { resolver in
            return BackgroundProvidingClass()
            
        }
        
        contanier.register(AnathorVCViewController.self) { resolver in
            let vc =  AnathorVCViewController(providerProtocol: resolver.resolve(BackgroundProvidingClass.self))
            return vc
        }
       
        return contanier
    }()

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor  = .systemBlue
        
        //
        
        let button  =  UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        
        button.setTitle("open the another vc ", for: .normal)
        button.center =  view.center
        button.addTarget(self, action: #selector(buttonCliked), for: .touchUpInside)
        view.addSubview(button)
              
        
    }
 
    
    @objc private func buttonCliked() {
        
        if let viewController = container.resolve(AnathorVCViewController.self) {
            present(viewController,animated :true)
      
        }
    }
}

