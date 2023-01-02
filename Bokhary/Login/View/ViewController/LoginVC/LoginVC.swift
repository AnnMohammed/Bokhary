//
//  LoginVC.swift
//  Bokhary
//
//  Created by Ann mohammed on 01/01/2023.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var countriesTableView: UITableView! {
        
        didSet {
            
            countriesTableView.delegate = self
            countriesTableView.dataSource = self
            countriesTableView.register(UINib(nibName: "CountriesTableCell", bundle: nil), forCellReuseIdentifier: "CountriesTableCell")
            
            let frame = CGRect(x: 0, y: 0, width: countriesTableView.frame.size.width, height: 1)
            countriesTableView.tableFooterView = UIView(frame: frame)
            countriesTableView.tableHeaderView = UIView(frame: frame)
            
            countriesTableView.rowHeight = 45
            countriesTableView.estimatedRowHeight = UITableView.automaticDimension
            
        }
    }
    @IBOutlet weak var countriesView: UIView!
    @IBOutlet weak var mobileCodeTxtFeild: UITextField!
    @IBOutlet weak var mobileNumberTextFeild: UITextField!
    
    var list: [Country] = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        configuration()
        
    }
    
    func configuration() {
        for code in NSLocale.isoCountryCodes  {
            let id = NSLocale.localeIdentifier(fromComponents: [NSLocale.Key.countryCode.rawValue: code])
            let name = NSLocale(localeIdentifier: "en").displayName(forKey: NSLocale.Key.identifier, value: id)
            
            let locale = NSLocale.init(localeIdentifier: id)
            
            let countryCode = locale.object(forKey: NSLocale.Key.countryCode)
            let currencyCode = locale.object(forKey: NSLocale.Key.currencyCode)
            let currencySymbol = locale.object(forKey: NSLocale.Key.currencySymbol)
            
            if name != nil {
                let model = Country()
                model.name = name
                model.countryCode = countryCode as? String
                model.currencyCode = currencyCode as? String
                model.currencySymbol = currencySymbol as? String
                model.flag = String.flag(for: code)
                model.extensionCode = NSLocale().extensionCode(countryCode: model.countryCode)
                list.append(model)
            }
        }
        
        mobileCodeTxtFeild.text = "\(list[23].flag ?? "") +\( list[23].extensionCode ?? "")"
        
    }
    
    @IBAction func countriesCodeBTNTapped(_ sender: Any) {
        
        if countriesView.isHidden {
            
            countriesView.isHidden = false
            
        }else {
            
            countriesView.isHidden = true
            
        }
        
    }
    
}
