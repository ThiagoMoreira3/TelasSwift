//
//  RedViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class RedViewController: ViewControllerDefault{
    //MARK: - Clousures
    var onBlueTap: (()-> Void)?
    var onGreenTap: (()-> Void)?
    
    //variável recebendo a tela de login
    lazy var redView: RedView = {
        let redView = RedView()
        
        redView.onBlueTap = {
            self.onBlueTap?()
        }
            
        redView.onGreenTap = {
            self.onGreenTap?()
        }
        return redView
    }()
    
        override func loadView() {
        //define que a nova tela a ser chamada será a BlueView
            self.view = redView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Vermelha"
    }
}
