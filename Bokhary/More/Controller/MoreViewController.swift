//
//  MoreViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 28/12/2022.
//

import UIKit

class MoreViewController: UIViewController {
    //MARK: Props
    var moreViewModel = MoreViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var moreTableView: UITableView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var UserNameLabel: UILabel!
    @IBOutlet weak var userIDLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
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
        moreTableView.delegate = self
        moreTableView.dataSource = self
        moreTableView.register(UINib(nibName: moreViewModel.moreTabelVewCellID, bundle: .main), forCellReuseIdentifier: moreViewModel.moreTabelVewCellID)
        moreTableView.register(UINib(nibName: moreViewModel.moreSectionHeaderCellID, bundle: .main), forCellReuseIdentifier: moreViewModel.moreSectionHeaderCellID)
        moreTableView.reloadData()
    }
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        .lightContent
//    }
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "More"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    @objc func barButtonTapped() {
        // Go To Cart VC
    }
}
