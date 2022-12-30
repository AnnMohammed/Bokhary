//
//  LoginVCTableViewEX.swift
//  Bokhary
//
//  Created by Ann mohammed on 31/12/2022.
//

import Foundation
import UIKit

extension LoginViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = countriesTable.dequeueReusableCell(withIdentifier: "CountriesTableCell", for: indexPath) as? CountriesTableCell else { return UITableViewCell() }
        
        cell.countryCodeLabel.text = "\(list[indexPath.row].flag ?? "") +\( list[indexPath.row].extensionCode ?? "")"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        codeTextFeild.text = "\(list[indexPath.row].flag ?? "") +\( list[indexPath.row].extensionCode ?? "")"
        cuntriesView.isHidden = true
        
        print(indexPath.row)
        print(list[indexPath.row].extensionCode ?? "")
        
    }
    
}
