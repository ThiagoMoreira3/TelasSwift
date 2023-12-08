//
//  GreenViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class GreenViewController: ViewControllerDefault{
    //MARK: - Clousures
    var onBlueTap: (()-> Void)?
    var onRedTap: (()-> Void)?
    
    //variável recebendo a tela de login
    lazy var greenView: GreenView = {
        let greenView = GreenView()
        
        greenView.onBlueTap = {
            self.onBlueTap?()
        }
            
        greenView.onRedTap = {
            self.onRedTap?()
        }
        return greenView
    }()
    
        override func loadView() {
        //define que a nova tela a ser chamada será a BlueView
            self.view = greenView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela verde"
    }
}
