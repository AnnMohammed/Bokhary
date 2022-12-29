//
//  EditProfileViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 29/12/2022.
//

import UIKit

class EditProfileViewController: UIViewController {
    //MARK: Props
    var myProfileViewModel = MyProfileViewModel()

    //MARK: IBOutlets
    @IBOutlet weak var saveButtonOutlet: UIButton!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextfield: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var countriesDropDownButton: UIButton!
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    //MARK: Main Methods
    func initView() {
        textFieldsConfig()
        navBarConfig()
        countriesDropDownButton.showsMenuAsPrimaryAction  = true
        countriesDropDownButton.menu = UIMenu(children: [
            UIAction(title: "+965", image: UIImage(named: "Mask Group 32"), handler: { [self] action in
                countriesDropDownButton.imageView?.image =  UIImage(named: "Mask Group 32")
                // DO Something
            }),
            UIAction(title: "+971", image: UIImage(named: "Mask Group 33"), handler: { [self] action in
                countriesDropDownButton.imageView?.image =  UIImage(named: "Mask Group 33")
                // DO Something
            }),
            UIAction(title: "+974", image: UIImage(named: "Mask Group 34"), handler: { [self] action in
                countriesDropDownButton.imageView?.image =  UIImage(named: "Mask Group 34")
                // DO Something
            }),
            UIAction(title: "+968", image: UIImage(named: "Mask Group 35"), handler: { [self] action in
                countriesDropDownButton.imageView?.image =  UIImage(named: "Mask Group 35")
                // DO Something
            })
])
        // buttonsColors()
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        
    }
    //MARK: View Methods
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "Edit Profile"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    //    func buttonsColors() {
    //        self.nextButtonOutlet.applyGradient(colors: [UIButton.UIColorFromRGB(0xB01F22).cgColor,UIButton.UIColorFromRGB(0xD92822).cgColor], num: 0, title: "aaa")
    //
    //    }
    func textFieldsConfig () {
        mobileNumberTextField.attributedPlaceholder = NSAttributedString (
            string: "Mobile Number", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 20.0, weight: .regular)]
        )
        passwordTextField.attributedPlaceholder = NSAttributedString (
            string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 20.0, weight: .regular)]
        )
        confirmPasswordTextfield.attributedPlaceholder = NSAttributedString (
            string: "Confirm Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 20.0, weight: .regular)]
        )
        emailTextField.attributedPlaceholder = NSAttributedString (
            string: "Email", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 20.0, weight: .regular)]
        )
    }
    @objc func barButtonTapped() {
        // Go To Cart VC
    }
}
