//
//  BlueView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class BlueView: UIView{
    //MARK: - Inicializadores
       override init(frame: CGRect) {
           //chama o frame da superclasse
           super.init(frame: frame)
           self.backgroundColor = .blue
           setupVisualElements()
       }
    
    //MARK: - Clousures
    var onGreenTap: (()-> Void)?
    var onRedTap: (()-> Void)?
    
    //MARK: - Configuração dos elementos visuais
    var greenButton = ButtonDefault(text: "Ir para tela verde")
    
    func setupVisualElements() {
        self.addSubview(greenButton)
        
        greenButton.addTarget(self, action: #selector(greenTap), for: .touchUpInside)
        
        //Configura as restrições de layout para todos os elementos visuais
        NSLayoutConstraint.activate([
            greenButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            greenButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    //MARK: - Actions
    
    @objc
    private func greenTap()
    {
        onGreenTap?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) não foi implementado")
    }
}
