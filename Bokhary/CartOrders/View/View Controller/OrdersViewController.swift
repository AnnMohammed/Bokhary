//
//  OrdersViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import UIKit

class OrdersViewController: UIViewController {
    @IBOutlet weak var ordersTableView: UITableView! {
        
        didSet {
            
            ordersTableView.delegate = self
            ordersTableView.dataSource = self
            ordersTableView.register(UINib(nibName: "ordersTableViewCell", bundle: nil), forCellReuseIdentifier: "ordersTableViewCell")
            ordersTableView.register(UINib(nibName: "TrackOrderTableViewCell", bundle: nil), forCellReuseIdentifier: "TrackOrderTableViewCell")
            ordersTableView.register(UINib(nibName: "PaymentSymarryTableViewCell", bundle: nil), forCellReuseIdentifier: "PaymentSymarryTableViewCell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ordersTableView.estimatedRowHeight = UITableView.automaticDimension
        ordersTableView.rowHeight = 60
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        title = "Cart"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
    }


    @objc func addTapped(){
        
        print("cart Tapped")
    }

    
    
}
