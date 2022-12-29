//
//  TermsAndConditionsVC.swift
//  Bokhary
//
//  Created by Ann mohammed on 29/12/2022.
//

import UIKit

class TermsAndConditionsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "Terms & Conditions"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
    }
    
    @objc func addTapped(){
        
        print("cart Tapped")
    }
        
    }


