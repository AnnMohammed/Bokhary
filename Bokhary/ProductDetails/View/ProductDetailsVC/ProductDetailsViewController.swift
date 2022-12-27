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
    }
    @IBAction func MessageButton(_ sender: Any) {
    }
    @IBAction func PlusButton(_ sender: Any) {
    }
    @IBAction func MinusButton(_ sender: Any) {
    }
    @IBAction func AddToCartButton(_ sender: Any) {
    }
    
}
