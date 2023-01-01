//
//  ProductDetailsViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 26/12/2022.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    
    // variabels
    
    var sections = [Section]()
    var istapped = false
    var numberOfItems = 0
    let categoriesNames = ["Additions" , "Removes" , "Add any notes"]
    var isChecked = false
    // ortlets
    

    @IBOutlet weak var addToCartButton: UIButton!
    @IBOutlet weak var QuantityLbl: UILabel!
    @IBOutlet weak var quantityView: UIView!
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var productDetailTableView: UITableView! {
        
        didSet{
            
            productDetailTableView.delegate = self
            productDetailTableView.dataSource = self
            productDetailTableView.register(UINib(nibName: "AditionRemoveTableViewCell", bundle: nil), forCellReuseIdentifier: "AditionRemoveTableViewCell")
            productDetailTableView.register(UINib(nibName: "AdditionRemoveTitleCell", bundle: nil), forCellReuseIdentifier: "AdditionRemoveTitleCell")
            productDetailTableView.register(UINib(nibName: "NotesTableViewCell", bundle: nil), forCellReuseIdentifier: "NotesTableViewCell")
            productDetailTableView.register(UINib(nibName: "RelateddishesTableViewCell", bundle: nil), forCellReuseIdentifier: "RelateddishesTableViewCell")
            productDetailTableView.rowHeight = UITableView.automaticDimension
            productDetailTableView.estimatedRowHeight = 44
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpModel()
        stylingButton()
        stylingView()
        navigationController?.isNavigationBarHidden = true
        
        productDetailTableView.contentInsetAdjustmentBehavior = .never
        productDetailTableView.allowsMultipleSelection = true
        setupHeaderImage()
        
    }
    
    func setUpModel (){
        
        sections = [
            Section (title: "section1", options: [1,2,3].compactMap({return "cell\($0)"})),
            Section (title: "section2", options: [1,2,3].compactMap({return "cell\($0)"})),
            Section (title: "section3", options: [1].compactMap({return "cell\($0)"})),
            Section (title: "section4", options: [1].compactMap({return "cell\($0)"}))
        ]
        
    }
    
    func stylingButton(){
        
        addToCartButton.layer.cornerRadius = 25
        addToCartButton.layer.borderWidth = 1
        addToCartButton.layer.borderColor = UIColor.init(hexString: "#D92822")?.cgColor
    }
    
    func stylingView(){
        
        quantityView.layer.cornerRadius = 25
        quantityView.layer.borderWidth = 1
        quantityView.layer.borderColor = UIColor.init(hexString: "#E4A371")?.cgColor
    }
    
    fileprivate func setupHeaderImage() {
        headerImage.layer.cornerRadius = 30
        headerImage.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        headerImage.layer.shadowColor = UIColor.gray.cgColor
        headerImage.layer.shadowOpacity = 1
        headerImage.layer.shadowOffset = .zero
        headerImage.layer.shadowRadius = 10
    }
    
    @IBAction func FavButton(_ sender: Any) {
        
        if !istapped {
            
            print("Added to favorite")
            favButton.setImage(UIImage(named: "full favorite"), for: .normal)
            istapped = true
            
        }else {
            
            print("removed from favorite")
            favButton.setImage(UIImage(named: "notFav"), for: .normal)
            
            istapped = false
        }
        
    }
    @IBAction func MessageButton(_ sender: Any) {
        
        print("directed to messages")
        
    }
    
    @IBAction func PlusButton(_ sender: Any) {
        
        numberOfItems += 1
        QuantityLbl.text = "\(numberOfItems)"
    }
    
    @IBAction func MinusButton(_ sender: Any) {
        
        if numberOfItems > 0  {
            
            numberOfItems -= 1
            QuantityLbl.text = "\(numberOfItems)"
            
        }else {
            
            print("cant get minus")
            
        }
        
    }
    
    @IBAction func AddToCartButton(_ sender: Any) {
        
        print("Added to cart")
        
    }
    @IBOutlet weak var backButtonTapped: UIImageView!
    
    
    
}
