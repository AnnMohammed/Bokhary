//
//  NoAddressViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 25/12/2022.
//

import UIKit

class NoAddressViewController: UIViewController {
    @IBOutlet weak var addAddressOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsColors()
    }
    func buttonsColors() {
        self.addAddressOutlet.applyGradient(colors: [UIButton.UIColorFromRGB(0xB01F22).cgColor,UIButton.UIColorFromRGB(0xD92822).cgColor], num: 60, title: "")
        
    }
    @IBAction func addAddressButton(_ sender: UIButton) {
        
    }
    

}
