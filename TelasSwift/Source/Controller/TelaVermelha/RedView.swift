//
//  RedView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class RedView: UIView{
    //MARK: - Inicializadores
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        self.backgroundColor = .red
        setupVisualElements()
    }
    //MARK: - Clousures
    var onBlueTap: (()-> Void)?
    var onGreenTap: (()-> Void)?
    
    //MARK: - Configuração dos elementos visuais
    var blueButton = ButtonDefault(text: "Ir para tela azul")
    
    var greenButton = ButtonDefault(text: "Voltar para tela verde")
    
    func setupVisualElements() {
        self.addSubview(blueButton)
        self.addSubview(greenButton)
        
        greenButton.addTarget(self, action: #selector(greenTap), for: .touchUpInside)
        
        blueButton.addTarget(self, action: #selector(blueTap), for: .touchUpInside)
        
        //Configura as restrições de layout para todos os elementos visuais
        NSLayoutConstraint.activate([
            blueButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            blueButton.heightAnchor.constraint(equalToConstant: 40),

            greenButton.topAnchor.constraint(equalTo: blueButton.bottomAnchor, constant: 25),
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
    
    @objc
    private func blueTap()
    {
        onBlueTap?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) não foi implementado")
    }}
