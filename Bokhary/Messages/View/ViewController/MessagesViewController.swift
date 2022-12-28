//
//  MessagesViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import UIKit

class MessagesViewController: UIViewController {

    @IBOutlet weak var messageTableView: UITableView!{
        
        didSet {
            
            messageTableView.delegate = self
            messageTableView.dataSource = self
            messageTableView.register(UINib(nibName: "MessagesTableViewCell", bundle: nil), forCellReuseIdentifier: "MessagesTableViewCell")
            messageTableView.separatorStyle = .singleLine
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        setNavigation()
        
        messageTableView.rowHeight = 80
        messageTableView.estimatedRowHeight = UITableView.automaticDimension
    }


    func setNavigation() {
        
        title = "Favorite"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
        messageTableView.separatorStyle = .none
    }
        
    @objc func addTapped(){
        
        print("cart Tapped")
    }
    
    }


