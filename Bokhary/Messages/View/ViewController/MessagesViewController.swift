//
//  MessagesViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import UIKit

class MessagesViewController: UIViewController {
    
    @IBOutlet weak var messageatypeCV: UICollectionView! {
        
        didSet {
            
            messageatypeCV.delegate = self
            messageatypeCV.dataSource = self
            messageatypeCV.register(UINib(nibName: "MessageTypeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MessageTypeCollectionViewCell")
            
        }
        
    }
    @IBOutlet weak var messageTableView: UITableView!{
        
        didSet {
            
            messageTableView.delegate = self
            messageTableView.dataSource = self
            messageTableView.register(UINib(nibName: "MessagesTableViewCell", bundle: nil), forCellReuseIdentifier: "MessagesTableViewCell")
            
            let frame = CGRect(x: 0, y: 0, width: messageTableView.frame.size.width, height: 1)
            messageTableView.tableFooterView = UIView(frame: frame)
            messageTableView.tableHeaderView = UIView(frame: frame)
            
            messageTableView.rowHeight = 80
            messageTableView.estimatedRowHeight = UITableView.automaticDimension
            
        }
        
    }
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigation()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
                
    }
    
    func setNavigation() {
        
        title = "Messages"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
    }
    
    @objc func addTapped(){
        
        print("cart Tapped")
    }
    
}


