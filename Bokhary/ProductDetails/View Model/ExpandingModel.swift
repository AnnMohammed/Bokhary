//
//  ExpandingModel.swift
//  Bokhary
//
//  Created by Ann mohammed on 27/12/2022.
//

import Foundation

class Section {
    
    let title : String
    let options : [String]
    var isOpened : Bool = false
    
    init(title:String , options:[String] , isOpened:Bool = false){
        
        self.title = title
        self.options = options
        
    }
    
}
