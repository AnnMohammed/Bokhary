//
//  CheckOutViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 26/12/2022.
//

import UIKit

class CheckOutViewController: UIViewController {
    //MARK: Props
    var checkOutViewModel = CheckOutViewModel()
    var cartViewModel = CartViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var checkOutTableView: UITableView!
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    //MARK: Main Methods
    func initView() {
        //        collectionViewConfig()
        tableViewConfig()
        navBarConfig()
        //        counterLabel.text = "\(cartViewModel.count)"
    }
    //MARK: View Methods
    func tableViewConfig() {
        checkOutTableView.delegate = self
        checkOutTableView.dataSource = self
        checkOutTableView.register(UINib(nibName: checkOutViewModel.itemTableViewCellID, bundle: .main), forCellReuseIdentifier:  checkOutViewModel.itemTableViewCellID)
        checkOutTableView.register(UINib(nibName: checkOutViewModel.addressDetailsTableViewCellID, bundle: .main), forCellReuseIdentifier:  checkOutViewModel.addressDetailsTableViewCellID)
        checkOutTableView.register(UINib(nibName: checkOutViewModel.paymentMethodsTableViewCellID, bundle: .main), forCellReuseIdentifier: checkOutViewModel.paymentMethodsTableViewCellID)
        checkOutTableView.register(UINib(nibName: cartViewModel.carttTableViewCellID, bundle: .main), forCellReuseIdentifier: cartViewModel.carttTableViewCellID)
    }
    func navBarConfig() {
         navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "Check Out"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    @objc func barButtonTapped() {
        
    }
}

