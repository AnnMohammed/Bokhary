//
//  NavigationBar+EX.swift
//  Bokhary
//
//  Created by Ann mohammed on 29/12/2022.
//

import Foundation
import UIKit

extension UINavigationBar {

    func shouldRemoveShadow(_ value: Bool) -> Void {
        if value {
            self.setValue(true, forKey: "hidesShadow")
        } else {
            self.setValue(false, forKey: "hidesShadow")
        }
    }
}

