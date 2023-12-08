//
//  BlueViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

class BlueViewController: ViewControllerDefault{
    //MARK: - Clousures
    var onGreenTap: (()-> Void)?
    
    //variável recebendo a tela azul
    lazy var blueView: BlueView = {
        let blueView = BlueView()
 
        blueView.onGreenTap = {
            self.onGreenTap?()
        }
        
        return blueView
    }()
    
        override func loadView() {
        //define que a nova tela a ser chamada será a BlueView
            self.view = blueView
    }
    
    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Azul"
    }
}
