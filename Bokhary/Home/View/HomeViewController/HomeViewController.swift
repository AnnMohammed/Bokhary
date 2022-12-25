//
//  HomeViewController.swift
//  Bokhary
//
//  Created by Ann mohammed on 25/12/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    // variables
    var timer : Timer?
    var currentIndex = 0
    // outlets
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var homePageController: UIPageControl!
    @IBOutlet weak var productsCollectionView: UICollectionView!{
        
        didSet{
            
            productsCollectionView.delegate = self
            productsCollectionView.dataSource = self
            
            homeTableView.delegate = self
            homeTableView.dataSource = self
            
            productsCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
            homeTableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        homePageController.numberOfPages = 3
        handleTimer()
        homeTableView.separatorStyle = .none
    }
    
    func handleTimer(){
        
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(moveToNext), userInfo: nil, repeats: true)
        
    }
    
  @objc func moveToNext(){
        
      if currentIndex < 2 {
          currentIndex+=1
          
      }else{
          currentIndex = 0
      }
      productsCollectionView.scrollToItem(at: IndexPath(item: currentIndex, section: 0), at: .centeredHorizontally, animated: true)
      
      //page controller
      homePageController.currentPage = currentIndex
    }
    

}
