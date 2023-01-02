//
//  MenuViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 25/12/2022.
//

import UIKit

class MenuViewController: UIViewController {
    
    // variabels
    var isChanged = true
    var index = 0
    var counter = 0
    var productsArr = ["Lamb Chops" , "Lamb Kebab" , "Bukhari Rice" , "Bukhari Rice","Lamb Chops" , "Lamb Kebab"]
    
    // Outlets
    @IBOutlet weak var rowStyleButtonOutlet: UIButton!
    @IBOutlet weak var collectionStyleButtonOutlet: UIButton!
    @IBOutlet weak var contentCollectionview: UICollectionView! {
        
        didSet {
            
            contentCollectionview.delegate = self
            contentCollectionview.dataSource = self
            
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
        
        layouts()
        MakeLeftAndRightSwipe()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        title = "Menu"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        let add = UIBarButtonItem(image: UIImage(named: "Search"), style: .plain, target: self, action: #selector(searchTapped))
        let play = UIBarButtonItem(image: UIImage(named: "branches-svgrepo-com"), style: .plain, target: self, action: #selector(playTapped))
        
        navigationItem.leftBarButtonItems = [add, play]
        navigationItem.leftBarButtonItem?.tintColor = UIColor.black
        play.tintColor = UIColor.black
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        
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
        
        isChanged = false
        contentCollectionview.reloadData()
        print("tapped")
        
        collectionStyleButtonOutlet.setBackgroundImage(UIImage(named: "LayoutSelected"), for: .normal)
        rowStyleButtonOutlet.setBackgroundImage(UIImage(named: "RowsUnselected"), for: .normal)
        
    }
    
    @IBAction func RowsStyle(_ sender: Any) {
        
        isChanged = true
        contentCollectionview.reloadData()
        
        rowStyleButtonOutlet.setBackgroundImage(UIImage(named: "Rows"), for: .normal)
        collectionStyleButtonOutlet.setBackgroundImage(UIImage(named: "Layout"), for: .normal)
        
    }
    
    func MakeLeftAndRightSwipe() {
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(gesture:)) )
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(gesture:)) )
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
    }
    
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer)
    {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer
        {
            switch swipeGesture.direction
            {
            case UISwipeGestureRecognizer.Direction.right:
                //write your logic for right swipe
                print("Swiped right")
                if counter <= 0 {
                    
                    print("cannot make minus")
                }else{
                    
                    counter -= 1
                    let indexPath = IndexPath(item: counter, section: 0)
                    categorieCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
                    //                    GetMenuData(ID: productsArr[counter].parentCategoryID)
                    index = indexPath.row
                    categorieCollectionView.reloadData()
                }
                
                
                
            case UISwipeGestureRecognizer.Direction.left:
                //write your logic for left swipe
                print("Swiped left")
                
                if counter >= productsArr.count - 1 {
                    
                    print("cannot make counter")
                }else{
                    
                    counter += 1
                    let indexPath = IndexPath(item: counter, section: 0)
                    categorieCollectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
                    //                    GetMenuData(ID: productsArr[counter].parentCategoryID)
                    index = indexPath.row
                    categorieCollectionView.reloadData()
                }
            default:
                break
            }
        }
    }
    
}
