//
//  FavoriteViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 28/12/2022.
//

import UIKit

class FavoriteViewController: UIViewController {
    @IBOutlet weak var listOfFavorietsTableView: UITableView! {
        
        didSet {
            
            listOfFavorietsTableView.delegate = self
            listOfFavorietsTableView.dataSource = self
            
            listOfFavorietsTableView.register(UINib(nibName: "FavoriteTableViewCell", bundle: nil), forCellReuseIdentifier: "FavoriteTableViewCell")
            
            listOfFavorietsTableView.rowHeight = 120
            listOfFavorietsTableView.estimatedRowHeight = UITableView.automaticDimension
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        title = "Favorite"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
        listOfFavorietsTableView.separatorStyle = .none
        
    }
    
    @objc func addTapped(){
        
        print("cart Tapped")
    }
    
}
