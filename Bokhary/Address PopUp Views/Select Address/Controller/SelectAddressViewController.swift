//
//  SelectAddressViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 26/12/2022.
//

import UIKit

class SelectAddressViewController: UIViewController {
    
   var selectAddressViewModel =  SelectAddressViewModel()
    
    @IBOutlet weak var addressesTableView: UITableView!
    @IBOutlet weak var addAddressButtonOutlet: UIButton!
    @IBOutlet weak var confirmAddressButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
   func initView() {
       tableViewConfig()
       buttonsColors()
    }
    func tableViewConfig() {
        addressesTableView.delegate = self
        addressesTableView.dataSource = self
        addressesTableView.register(UINib(nibName: selectAddressViewModel.selectAddressTableViewCellID, bundle: .main), forCellReuseIdentifier: selectAddressViewModel.selectAddressTableViewCellID)
    }
    func buttonsColors() {
        self.confirmAddressButtonOutlet.applyGradient(colors: [UIButton.UIColorFromRGB(0xB01F22).cgColor,UIButton.UIColorFromRGB(0xD92822).cgColor], num: 0, title: "")
        
    }
    @IBAction func addNewAddressButton(_ sender: UIButton) {
        
    }
    
    @IBAction func confirmAddressButton(_ sender: UIButton) {
        
    }
}

