//
//  RelateddishesTableViewCell.swift
//  Bokhary
//
//  Created by Ann mohammed on 27/12/2022.
//

import UIKit

class RelateddishesTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var relatedDishesCollectionView: UICollectionView! {
        
        didSet{
            
            relatedDishesCollectionView.delegate = self
            relatedDishesCollectionView.dataSource = self
            relatedDishesCollectionView.register(UINib(nibName: "DishesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "DishesCollectionViewCell")
          
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = relatedDishesCollectionView.dequeueReusableCell(withReuseIdentifier: "DishesCollectionViewCell", for: indexPath) as! DishesCollectionViewCell
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (relatedDishesCollectionView.frame.size.width - 10) / 2, height: 215)
    }
    
}
