//
//  ButtonDefault.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-21 on 08/12/23.
//

import Foundation
import UIKit

class ButtonDefault : UIButton{
    
init(text: String) {
    super.init(frame: .zero)
    initDefault(text: text)
}

required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

    private func initDefault (text: String){

    self.setTitle(text, for: .normal)
    self.backgroundColor = .black
    self.layer.cornerRadius = 12
    self.translatesAutoresizingMaskIntoConstraints = false

}

}
