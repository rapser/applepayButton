//
//  ViewController.swift
//  applePayButton
//
//  Created by miguel tomairo on 8/19/21.
//

import UIKit
import PassKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cards = ["**** 1824 (1)", "**** 1880 (1)", "**** 1968 (1)"]
    let names = ["Caja Huancayo Oro", "Caja Sullana Black", "Caja Ica White"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        overrideUserInterfaceStyle = .light
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    
    private func setupAddPassButton() {
        
//        let button = PKAddPassButton()
//        button.addPassButtonStyle = .blackOutline
//        button.addTarget(self, action: #selector(passTouchUpInside), for: .touchUpInside)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        let scale = CGFloat(floatLiteral: 0.8)
//        button.transform = CGAffineTransform(scaleX: scale, y: scale)
//        fondoView.addSubview(button)
//        button.centerYAnchor.constraint(equalTo: fondoView.centerYAnchor).isActive = true
//        button.trailingAnchor.constraint(equalTo: fondoView.trailingAnchor, constant: -5).isActive = true

    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardCell", for: indexPath) as! CardTableViewCell
        
        cell.nameLabel.text = names[indexPath.row]
        cell.cardNumber.text = cards[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}


// MARK: VALORES

// iphone SE(second): ancho 142 alto 46
// iphone 7 : ancho: ancho 142 alto 46
// iphone 7 plus : ancho 141,66666 alto: 45.3333
// iphone 11: ancho 142 alto 46

// MARK: iphone fisico
// iphone 11 pro: ancho 187 alto 50
// iphone x: ancho 186.333333 alto 46
