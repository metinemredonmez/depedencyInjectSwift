//
//  AnathorVCViewController.swift
//  AppDependency
//
//  Created by Metin Donmez on 21.08.2022.
//

import UIKit

class AnathorVCViewController: UIViewController {
    
    private let  providerProtocol  : BackgroundProviderProtocol?

    
    init (providerProtocol : BackgroundProviderProtocol?)
    {
        self.providerProtocol = providerProtocol
        
        super.init(nibName: nil, bundle: nil)
        
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = providerProtocol?.background ?? .white
        
        
    }
    
    


}
