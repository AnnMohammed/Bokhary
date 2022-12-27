//
//  UIButton+Ext.swift
//  Bokhary
//
//  Created by Mostafa Elbadawy on 25/12/2022.
//
import UIKit

@IBDesignable

extension UIButton {

    @IBInspectable override var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    @IBInspectable override var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    @IBInspectable override var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    @IBInspectable override var borderColor: UIColor?  {
        get {
            return UIColor(cgColor: self.layer.borderColor!)
        }
        set {
            self.layer.borderColor = newValue?.cgColor
        }
    }
    @IBInspectable override var shadowColor: UIColor?  {
        get {
            return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
            self.layer.shadowColor = newValue?.cgColor
        }
    }
    @IBInspectable override var shadowOpacity: Float {
        get {
           return self.layer.shadowOpacity
        }
        set {
           self.layer.shadowOpacity = newValue
       }
    }
    func applyGradient(colors: [CGColor], num: Int, title: String) {
        
         // self.layoutIfNeeded()
          let gradientLayer = CAGradientLayer()
          gradientLayer.colors = colors
          gradientLayer.startPoint = CGPoint(x: 0, y: 0)
          gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.frame =  CGRect(x: 0, y: 0, width:self.bounds.width + CGFloat(num) , height: self.bounds.height)
         // gradientLayer.frame = self.bounds
          gradientLayer.cornerRadius = self.frame.height/2
          gradientLayer.masksToBounds = false
       // self.backgroundColor = .
          self.layer.insertSublayer(gradientLayer, at: 10)
        self.titleLabel?.text = title
       //   self.contentVerticalAlignment = .center
        //  self.setTitleColor(UIColor.white, for: .normal)
        //  self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17.0)
        //  self.titleLabel?.textColor = UIColor.white
      }
    static func UIColorFromRGB(_ rgbValue: Int) -> UIColor {
        return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16))/255.0, green: ((CGFloat)((rgbValue & 0x00FF00) >> 8))/255.0, blue: ((CGFloat)((rgbValue & 0x0000FF)))/255.0, alpha: 1.0)
    }
}
