//
//  VerificationViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 29/12/2022.
//

import UIKit

class VerificationViewController: UIViewController {
    //MARK: Props
    var verificationViewModel = VerificationViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var resendCodeButtonOutlet: UIButton!
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    //MARK: Main Methods
    func initView() {
        navBarConfig()
       // buttonsColors()
    }
    
    @IBAction func resendCodeButtonAction(_ sender: UIButton) {
        // Resend Verification Code
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        // Go To Next VC
    }
    
    
    //MARK: View Methods
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "Verification"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    func buttonsColors() {
        self.nextButtonOutlet.applyGradient(colors: [UIButton.UIColorFromRGB(0xB01F22).cgColor,UIButton.UIColorFromRGB(0xD92822).cgColor], num: 0, title: "aaa")
        
    }
    @objc func barButtonTapped() {
        // Go To Cart VC
    }
}
