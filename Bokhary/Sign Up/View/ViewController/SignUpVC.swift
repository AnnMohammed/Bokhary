//
//  SignUpVC.swift
//  Bokhary
//
//  Created by Ann mohammed on 29/12/2022.
//

import UIKit
class SignUpVC: UIViewController {
    
    @IBOutlet weak var codeTextFeild: UITextField!
    @IBOutlet weak var cuntriesView: UIView!
    @IBOutlet weak var countriesTable: UITableView! {
        
        didSet {
            
            countriesTable.delegate = self
            countriesTable.dataSource = self
            countriesTable.register(UINib(nibName: "CountriesTableCell", bundle: nil), forCellReuseIdentifier: "CountriesTableCell")
            
            let frame = CGRect(x: 0, y: 0, width: countriesTable.frame.size.width, height: 1)
            countriesTable.tableFooterView = UIView(frame: frame)
            countriesTable.tableHeaderView = UIView(frame: frame)
            
            countriesTable.rowHeight = 45
            countriesTable.estimatedRowHeight = UITableView.automaticDimension
            
        }
        
    }
    
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
        
        codeTextFeild.text = "\(list[23].flag ?? "") +\( list[23].extensionCode ?? "")"
        
    }
    
    @IBAction func codeButtonTapped(_ sender: Any) {
        
        if cuntriesView.isHidden {
            
            cuntriesView.isHidden = false
            
        }else {
            
            cuntriesView.isHidden = true
            
        }
        
    }
    
}
