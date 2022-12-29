//
//  LoginViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 29/12/2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var mobileNumberTxtFeild: UITextField!
    
    // variables
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.isToolbarHidden = true
        navigationController?.isNavigationBarHidden = true
    }
    
}
