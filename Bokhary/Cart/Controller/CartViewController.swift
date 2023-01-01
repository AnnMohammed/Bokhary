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
    
    @IBOutlet weak var checkOutButtonOutlet: UIButton!
    @IBOutlet weak var addItemsButtonOutlet: UIButton!
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
        presentSelectAddressPopUp()
       // goToCheckOutVC()
    }
    
    @IBAction func chechOutButton(_ sender: UIButton) {
       // presentNoAddressPopUp()
        presentAddNewAddressPopUp()
        
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
      //  buttonsColors()
    }
    func collectionViewConfig() {
        cartCollectionView.delegate = self
        cartCollectionView.dataSource = self
        cartCollectionView.register(UINib(nibName: cartViewModel.cartCollectionViewCellID, bundle: .main), forCellWithReuseIdentifier: cartViewModel.cartCollectionViewCellID)
    }
    func tableViewConfig() {
        cartTableView.delegate = self
        cartTableView.dataSource = self
        cartTableView.register(UINib(nibName: cartViewModel.carttTableViewCellID, bundle: .main), forCellReuseIdentifier: cartViewModel.carttTableViewCellID)
        cartTableView.register(UINib(nibName: cartViewModel.sectionHeaderCellID, bundle: .main), forCellReuseIdentifier: cartViewModel.sectionHeaderCellID)
    }
   
    func navBarConfig() {
        navigationController?.navigationBar.backgroundColor = UIColor(named: "Primary")
        navigationItem.title = "Cart"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .done, target: self, action: #selector(barButtonTapped))
        self.navigationController?.navigationBar.tintColor = UIColor(named: "CartColor")
    }
    func buttonsColors() {
        self.checkOutButtonOutlet.applyGradient(colors: [UIButton.UIColorFromRGB(0xB01F22).cgColor,UIButton.UIColorFromRGB(0xD92822).cgColor], num: 0, title: "")
    }
    @objc func barButtonTapped() {
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    func presentNoAddressPopUp() {
        let newViewController = NoAddressViewController(nibName: "NoAddressViewController", bundle: .main)
        newViewController.providesPresentationContextTransitionStyle = true
        newViewController.definesPresentationContext = true
        newViewController.modalPresentationStyle = .popover
        newViewController.view.backgroundColor = UIColor.clear
        if let sheet = newViewController.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
        }
        self.present(newViewController, animated: true, completion: nil)
    }
    func presentSelectAddressPopUp() {
        let vc = SelectAddressViewController(nibName: "SelectAddressViewController", bundle: .main)
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        vc.modalPresentationStyle = .popover
        vc.view.backgroundColor = UIColor.clear
        if let sheet = vc.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
        }
        self.present(vc, animated: true, completion: nil)
    }
    func presentAddNewAddressPopUp() {
        let vc = AddAddressViewController(nibName: "AddAddressViewController", bundle: .main)
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        vc.modalPresentationStyle = .popover
        vc.view.backgroundColor = UIColor.clear
        if let sheet = vc.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
        }
        self.present(vc, animated: true, completion: nil)
    }
    func goToCheckOutVC() {
        let vc = CheckOutViewController(nibName: "CheckOutViewController", bundle: .main)
//        vc.providesPresentationContextTransitionStyle = true
//        vc.definesPresentationContext = true
//        vc.modalPresentationStyle = .popover
//        vc.view.backgroundColor = UIColor.clear
//        if let sheet = vc.sheetPresentationController {
//            sheet.detents = [.medium(), .large()]
//        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
