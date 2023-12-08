//
//  ViewControllerDefault.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController {
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //faz com que o título superior fique maior
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        //faz com que o botão do navigationController desapareça
        self.navigationItem.setHidesBackButton(true, animated: false)
        

    }
    
}
