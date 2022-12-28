//
//  ContactUsViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 28/12/2022.
//

import UIKit

class ContactUsViewController: UIViewController {
    //MARK: Props
    var contactUsViewModel = ContactUsViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var aboutUsImageView: UIImageView!
    @IBOutlet weak var ContactUsTableView: UITableView!
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    //MARK: Main Methods
    func initView() {
        navBarConfig()
        tableViewConfig()
    }
    //MARK: View Methods
    func tableViewConfig() {
        ContactUsTableView.delegate = self
        ContactUsTableView.dataSource = self
        ContactUsTableView.register(UINib(nibName: contactUsViewModel.contactUsTableViewCellID, bundle: .main), forCellReuseIdentifier: contactUsViewModel.contactUsTableViewCellID)
    }
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "About US"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    @objc func barButtonTapped() {
        // Go To Cart VC
    }
}
