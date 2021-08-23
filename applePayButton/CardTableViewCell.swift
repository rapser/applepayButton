//
//  CardTableViewCell.swift
//  applePayButton
//
//  Created by miguel tomairo on 8/21/21.
//

import UIKit
import PassKit

class CardTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cardNumber: UILabel!
    @IBOutlet weak var cardStack: UIStackView!
    @IBOutlet weak var appleStack: UIStackView!
    
    let button = PKAddPassButton()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        button.addPassButtonStyle = .blackOutline
        button.addTarget(self, action: #selector(passTouchUpInside), for: .touchUpInside)
        let scale = CGFloat(floatLiteral: 0.9)
        button.transform = CGAffineTransform(scaleX: scale, y: scale)
        
        appleStack.addArrangedSubview(button)
    }
    
    @objc func passTouchUpInside() {
        print("Tamaño")
        print("ancho \(button.frame.size.width)")
        print("alto \(button.frame.size.height)")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
