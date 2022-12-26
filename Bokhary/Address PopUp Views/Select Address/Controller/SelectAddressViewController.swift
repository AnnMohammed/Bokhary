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
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
   func initView() {
       tableViewConfig()
    }
    func tableViewConfig() {
        addressesTableView.delegate = self
        addressesTableView.dataSource = self
        addressesTableView.register(UINib(nibName: selectAddressViewModel.selectAddressTableViewCellID, bundle: .main), forCellReuseIdentifier: selectAddressViewModel.selectAddressTableViewCellID)
    }
    @IBAction func addNewAddressButton(_ sender: UIButton) {
        
    }
    
    @IBAction func confirmAddressButton(_ sender: UIButton) {
        
    }
}

