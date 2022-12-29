//
//  MyProfileViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 29/12/2022.
//

import UIKit

class MyProfileViewController: UIViewController {
    //MARK: Props
    var myProfileViewModel = MyProfileViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var myProfileTableView: UITableView!
    @IBOutlet weak var editProfileButtonOutlet: UIButton!
    @IBOutlet weak var deleteAccountButtonOutlet: UIButton!
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    //MARK: Main Methods
    func initView() {
        navBarConfig()
        tableViewConfig()
        // buttonsColors()
    }
    
    @IBAction func editProfileButtonAction(_ sender: UIButton) {
        navigatToEditProfile()
        print("Seses")
    }
    
    @IBAction func  deleteAccountButtonAction(_ sender: UIButton) {
        // Delete Account
    }
    
    //MARK: View Methods
    func tableViewConfig() {
        myProfileTableView.delegate = self
        myProfileTableView.dataSource = self
        myProfileTableView.register(UINib(nibName: myProfileViewModel.myProfileTableViewCellID, bundle: .main), forCellReuseIdentifier: myProfileViewModel.myProfileTableViewCellID)
    }
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "My Profile"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    //    func buttonsColors() {
    //        self.nextButtonOutlet.applyGradient(colors: [UIButton.UIColorFromRGB(0xB01F22).cgColor,UIButton.UIColorFromRGB(0xD92822).cgColor], num: 0, title: "aaa")
    //
    //    }
    @objc func barButtonTapped() {
        // Go To Cart VC
    }
    func navigatToEditProfile() {
        let NC = UINavigationController()
        let newViewController = EditProfileViewController(nibName: "EditProfileViewController", bundle: nil)
        self.navigationController?.pushViewController(newViewController ,animated: true )
    }
}
