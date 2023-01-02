//
//  TapBarController.swift
//  Bokhary
//
//  Created by Ann mohammed on 01/01/2023.
//

import UIKit
class TapBarController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create Tab one
        let tabOne = HomeViewController()
        let tabOneBarItem = UITabBarItem(title: "", image: UIImage(named: "Home_Icon"), selectedImage: UIImage(named: "selectedHomeIcon"))
        
        tabOne.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        tabOne.navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
        self.tabBar.tintColor = UIColor(hexString: "#E4A371")
        self.tabBar.unselectedItemTintColor = UIColor(hexString: "#E4A371")
        tabOne.tabBarItem = tabOneBarItem
    
        // Create Tab two
        let tabTwo = MessagesViewController()
        let tabTwoBarItem2 = UITabBarItem(title: "", image: UIImage(named: "UnselectedMessageIcon"), selectedImage: UIImage(named: "SelectedMessageIcon"))
        
        tabTwo.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        tabTwo.navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        self.viewControllers = [tabOne, tabTwo]
      handleActionWhenSelectItem(tabOneBarItem)
        
    }
    
    func setNavigation() {
        
//        title = "Messages"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor.black
        
    }
    
    @objc func addTapped(){
        
        print("cart Tapped")
    }
    
    func handleActionWhenSelectItem(_ item: UITabBarItem) {

        if item == (self.tabBar.items!)[0] {

            title = "Mohamed Noor Bokhari"
            
            navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
            navigationItem.rightBarButtonItem?.tintColor = UIColor.black
            
        }else if item == (self.tabBar.items!)[1] {

            title = "Messages"
            
            navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "Shopping-cart"), style: .plain, target: self, action: #selector(addTapped))
            navigationItem.rightBarButtonItem?.tintColor = UIColor.black
            
        }else {

            title = ""

        }
    }
    
    func removeTabbarItemsText() {
       if let items = tabBarController?.tabBar.items {
          for item in items {
             item.title = ""
              item.imageInsets = UIEdgeInsets(top: 3, left: 0, bottom: -6, right: 0);
          }
       }
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        handleActionWhenSelectItem(item)
        item.badgeColor = UIColor(hexString: "#E4A371")
    }
}

