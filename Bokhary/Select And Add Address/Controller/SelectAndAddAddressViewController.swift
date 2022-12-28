//
//  SelectAndAddAddressViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 27/12/2022.
//

import UIKit

class SelectAndAddAddressViewController: UIViewController {
    //MARK: Props
    let selectAndAddAddressViewModel = SelectAndAddAddressViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var addressesTableView: UITableView!
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    //MARK: Main Methods
    func initView() {
        tableViewConfig()
        navBarConfig()
    }
    //MARK: View Methods
    func tableViewConfig() {
        addressesTableView.delegate = self
        addressesTableView.dataSource = self
        addressesTableView.register(UINib(nibName: selectAndAddAddressViewModel.selectAddressTableViewCellID, bundle: .main), forCellReuseIdentifier: selectAndAddAddressViewModel.selectAddressTableViewCellID)
    }
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "Select Address"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    @objc func barButtonTapped() {
        presentAddNewAddressPopUp()
    }
    func presentAddNewAddressPopUp() {
        let vc = AddAddressViewController(nibName: "AddAddressViewController", bundle: .main)
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        vc.modalPresentationStyle = .popover
        vc.view.backgroundColor = UIColor.clear
        if let sheet = vc.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
        }
        self.present(vc, animated: true, completion: nil)
    }
}

