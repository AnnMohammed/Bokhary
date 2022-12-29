//
//  OrdersViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import UIKit

class OrdersViewController: UIViewController {
    
    @IBOutlet weak var menuCollectionview: UICollectionView! {
        
        didSet {
            
            menuCollectionview.dataSource = self
            menuCollectionview.delegate = self
            menuCollectionview.register(UINib(nibName: "MenuCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MenuCollectionViewCell")
        }
        
    }
    
    @IBOutlet weak var ordersTableView: UITableView! {
        
        didSet {
            
            ordersTableView.delegate = self
            ordersTableView.dataSource = self
            ordersTableView.register(UINib(nibName: "ordersTableViewCell", bundle: nil), forCellReuseIdentifier: "ordersTableViewCell")
            ordersTableView.register(UINib(nibName: "TrackOrderTableViewCell", bundle: nil), forCellReuseIdentifier: "TrackOrderTableViewCell")
            ordersTableView.register(UINib(nibName: "PaymentSymarryTableViewCell", bundle: nil), forCellReuseIdentifier: "PaymentSymarryTableViewCell")
            ordersTableView.separatorStyle = .none
            
        }
    }
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        //        ordersTableView.estimatedRowHeight = UITableView.automaticDimension
        //        ordersTableView.rowHeight = 60
        
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:.default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        title = "Cart"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:.default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
        //        self.navigationController?.navigationBar.layoutIfNeeded()
        
//        self.navigationController?.navigationBar.barTintColor = UIColor(hexString: "#EAD3B5")
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(named: ""), for: UIBarMetrics.default)
//        self.navigationController?.navigationBar.shadowImage = UIImage(named: "")
        
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = true
            
    }
    
    
    @objc func addTapped(){
        
        print("cart Tapped")
    }
    
    
    
}
