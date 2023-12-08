//
//  GreenCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class GreenCoodinator: coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = GreenViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onBlueTap = {
            self.gotoBlue()
        }
        
        viewController.onRedTap = {
            self.gotoRed()
        }
    }
    
    private func gotoBlue ()
    {
        self.navigationController.popViewController(animated: true)
    }
    
    private func gotoRed ()
    {
        let coordinator = RedCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
}
