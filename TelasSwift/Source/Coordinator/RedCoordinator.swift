//
//  RedCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class RedCoordinator: coordinator{
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RedViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onBlueTap = {
            self.gotoBlue()
        }
        
        viewController.onGreenTap = {
            self.gotoGreen()
        }
    }
    
    private func gotoBlue ()
    {
        let coordinator = BlueCoodinator(navigationController: navigationController)
        coordinator.start()
    }
    
    private func gotoGreen ()
    {
        self.navigationController.popViewController(animated: true)
    }
}
