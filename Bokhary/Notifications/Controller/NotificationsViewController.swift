//
//  NotificationsViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 28/12/2022.
//

import UIKit

class NotificationsViewController: UIViewController {
    //MARK: Props
    var notificationsViewModel = NotificationsViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var notificationsTableView: UITableView!
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
        notificationsTableView.delegate = self
        notificationsTableView.dataSource = self
        notificationsTableView.register(UINib(nibName: notificationsViewModel.notificationTableViewCellID, bundle: .main), forCellReuseIdentifier: notificationsViewModel.notificationTableViewCellID)
    }
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "Notifications"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    @objc func barButtonTapped() {
        
    }

}
