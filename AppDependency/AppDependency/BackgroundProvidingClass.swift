//
//  BackgroundProvidingClass.swift
//  AppDependency
//
//  Created by Metin Donmez on 21.08.2022.
//

import Foundation
import UIKit


//providing =>  saglayan
// provider  =>  saglayıcı


class BackgroundProvidingClass: BackgroundProviderProtocol {
    
    var background: UIColor {
        
        
        let backgorunColors : [UIColor] = [.systemBlue,.systemCyan,.systemGray]
        return backgorunColors.randomElement()!
        
        
        
    }
    
    
}
