//
//  BlueCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class BlueCoodinator: coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = BlueViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onGreenTap = {
             self.gotoGreen()
         }
     }
     
     private func gotoGreen ()
     {
         let coordinator = GreenCoodinator(navigationController: navigationController)
         coordinator.start()
     }

}

