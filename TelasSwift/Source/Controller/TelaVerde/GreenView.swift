//
//  GreenView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class GreenView: UIView{
    //MARK: - Inicializadores
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        self.backgroundColor = .green
        setupVisualElements()
    }
        //MARK: - Clousures
        var onBlueTap: (()-> Void)?
        var onRedTap: (()-> Void)?
        
        //MARK: - Configuração dos elementos visuais
        var blueButton = ButtonDefault(text: "Voltar para tela azul")
        
        var redButton = ButtonDefault(text: "Ir para tela vermelha")
        
            func setupVisualElements() {
            self.addSubview(blueButton)
            self.addSubview(redButton)
            
            redButton.addTarget(self, action: #selector(redTap), for: .touchUpInside)
            
            blueButton.addTarget(self, action: #selector(blueTap), for: .touchUpInside)
            
            //Configura as restrições de layout para todos os elementos visuais
            NSLayoutConstraint.activate([
                redButton.topAnchor.constraint(equalTo: topAnchor, constant: 228),
                redButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                redButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
                redButton.heightAnchor.constraint(equalToConstant: 40),
                
                blueButton.topAnchor.constraint(equalTo: self.redButton.bottomAnchor, constant: 25),
                blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
                blueButton.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
        
        //MARK: - Actions
        @objc
        private func redTap()
        {
            onRedTap?()
        }
        
        @objc
        private func blueTap()
        {
            onBlueTap?()
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) não foi implementado")
    }
}
