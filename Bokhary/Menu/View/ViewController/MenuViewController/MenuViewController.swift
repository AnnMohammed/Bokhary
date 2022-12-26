//
//  MenuViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 25/12/2022.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var contentCollectionview: UICollectionView!
    {
        
        didSet {
            
            contentCollectionview.delegate = self
            contentCollectionview.dataSource = self
//            contentCollectionview.register(UINib(nibName: "ContentColeectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ContentColeectionViewCell")
            
            contentCollectionview.register(UINib(nibName: "ContentColeectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ContentColeectionViewCell")
            
        }
        
    }
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var categorieCollectionView: UICollectionView!
    {
        
        didSet {
            
            categorieCollectionView.delegate = self
            categorieCollectionView.dataSource = self
            categorieCollectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        layouts()
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        title = "Menu"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
                let add = UIBarButtonItem(image: UIImage(named: "Search"), style: .plain, target: self, action: #selector(searchTapped))
                let play = UIBarButtonItem(image: UIImage(named: "branches-svgrepo-com"), style: .plain, target: self, action: #selector(playTapped))
        
                navigationItem.leftBarButtonItems = [add, play]
                navigationItem.leftBarButtonItem?.tintColor = UIColor.black
                play.tintColor = UIColor.black
    }
    
    @objc func addTapped() {

        print("cart")

    }
    
    @objc func searchTapped(){
        
        print("Search")
        
    }
    
    @objc func playTapped(){
        
        print("Play")
        
    }
    
    func layouts(){
        
        searchView.layer.cornerRadius = 20
        searchView.layer.borderColor = UIColor.init(hexString: "#E4A371")?.cgColor
        searchView.layer.borderWidth = 1
        
    }
    
    @IBAction func CollectionStyle(_ sender: Any) {
        
        
        
    }
    
    @IBAction func RowsStyle(_ sender: Any) {
        
//        func numberOfSections(in collectionView: UICollectionView) -> Int {
//            if collectionView == self.categorieCollectionView {
//
//                return 1
//
//                }
//                else {
//
//                   return 1
//
//                }
//        }
//
    }
    
}
