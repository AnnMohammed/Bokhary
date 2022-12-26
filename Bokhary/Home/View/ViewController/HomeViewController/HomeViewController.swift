//
//  HomeViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 25/12/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    // variables
    
    // outlets
    @IBOutlet weak var homeTableView: UITableView! {
        
        didSet{
            
            homeTableView.delegate = self
            homeTableView.dataSource = self
            
            homeTableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
            homeTableView.register(UINib(nibName: "SliderHomeTableViewCell", bundle: nil), forCellReuseIdentifier: "SliderHomeTableViewCell")
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeTableView.separatorStyle = .none
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        title = "Mohamed Noor Bokhari"
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
        //UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
//
//        if #available(iOS 15, *) {
//                // Navigation Bar background color
//                let appearance = UINavigationBarAppearance()
//                appearance.configureWithOpaqueBackground()
//                appearance.backgroundColor = UIColor.init(hexString: "#D39C65")
//
//                // setup title font color
//                let titleAttribute = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 25, weight: .bold), NSAttributedString.Key.foregroundColor: UIColor.white]
//                appearance.titleTextAttributes = titleAttribute
//
//                navigationController?.navigationBar.standardAppearance = appearance
//                navigationController?.navigationBar.scrollEdgeAppearance = appearance
//            }
//
//        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person"), style: .plain, target: self, action: #selector(addTapped)) //UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
//
//        let add = UIBarButtonItem(image: UIImage(systemName: "person"), style: .plain, target: self, action: #selector(addTapped))
//        let play = UIBarButtonItem(image: UIImage(systemName: "person"), style: .plain, target: self, action: #selector(addTapped))
//
//        navigationItem.leftBarButtonItems = [add, play]
        
    }
    
    @objc func addTapped() {

        print("cart")

    }
    

}
