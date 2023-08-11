//
//  RegisterPlayersCVcellT1.swift
//  secret code
//
//  Created by Wessam Kadah on 20/01/1445 AH.
//

import UIKit

class RegisterPlayersCVcellT1: UICollectionViewCell {
    
    @IBOutlet weak var txtNamePlayer: UITextField!
    
    func setupTextFields(for playerCount: Int) {
        for subview in contentView.subviews {
                    if let textField = subview as? UITextField {
                        textField.removeFromSuperview()
                    }
                }
            for i in 0..<playerCount {
                let textField = UITextField(frame: CGRect(x: 8, y: 8, width: 150, height: 30))
                textField.placeholder = "Player Name"
                print(playerCount)
                self.addSubview(textField)
            }
        }
}
