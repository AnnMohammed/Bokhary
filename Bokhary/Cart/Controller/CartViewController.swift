//
//  CartViewController.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 25/12/2022.
//

import UIKit

class CartViewController: UIViewController {
    //MARK: Props
    var cartViewModel = CartViewModel()
    //MARK: IBOutlets
    @IBOutlet weak var cartCollectionView: UICollectionView!
    @IBOutlet weak var cartTableView: UITableView!
    
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemPriceLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        cartViewModel.selectedItem = [0, 0]
    }
    
    @IBAction func addItemsButton(_ sender: UIButton) {

    }
    
    @IBAction func chechOutButton(_ sender: UIButton) {
        let newViewController = NoAddressViewController(nibName: "NoAddressViewController", bundle: .main)
        newViewController.providesPresentationContextTransitionStyle = true
        newViewController.definesPresentationContext = true
        newViewController.modalPresentationStyle = .formSheet
        
       // newViewController.modalPresentationStyle = UIModalPresentationStyle.formSheet
        newViewController.view.backgroundColor = UIColor.white
        if let sheet = newViewController.sheetPresentationController {
                sheet.detents = [.medium()]
            }
        self.present(newViewController, animated: true, completion: nil)
        
    }
    @IBAction func plusButton(_ sender: UIButton) {
                   cartViewModel.count += 1
                   viewDidLoad()
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        if cartViewModel.count > 1 {
            cartViewModel.count -= 1
        } else {
            return
        }
        viewDidLoad()
    }
    
    //MARK: Main Methods
    func initView() {
        collectionViewConfig()
        tableViewConfig()
        navBarConfig()
        counterLabel.text = "\(cartViewModel.count)"
    }
    func collectionViewConfig() {
        cartCollectionView.delegate = self
        cartCollectionView.dataSource = self
        cartCollectionView.register(UINib(nibName: cartViewModel.cartCollectionViewCellID, bundle: .main), forCellWithReuseIdentifier: cartViewModel.cartCollectionViewCellID)
    }
    func tableViewConfig() {
        // SectionHeaderCell
        cartTableView.delegate = self
        cartTableView.dataSource = self
        cartTableView.register(UINib(nibName: cartViewModel.carttTableViewCellID, bundle: .main), forCellReuseIdentifier: cartViewModel.carttTableViewCellID)
        cartTableView.register(UINib(nibName: "SectionHeaderCell", bundle: .main), forCellReuseIdentifier: "SectionHeaderCell")
    }
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "Cart"
    }
    
}
