//
//  SliderHomeTableViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 25/12/2022.
//

import UIKit

class SliderHomeTableViewCell: UITableViewCell {
    
    var timer : Timer?
    var currentIndex = 0
    
    @IBOutlet weak var sliderHomePageControl: UIPageControl!
    @IBOutlet weak var sliderHomeCollectionView: UICollectionView! {
        
        didSet {
            
            sliderHomeCollectionView.delegate = self
            sliderHomeCollectionView.dataSource = self
            
            sliderHomeCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
            
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
      sliderHomeCollectionView.scrollToItem(at: IndexPath(item: currentIndex, section: 0), at: .centeredHorizontally, animated: true)
      
      //page controller
      sliderHomePageControl.currentPage = currentIndex
    }
    
}
