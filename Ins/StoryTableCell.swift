//
//  StoryTableCell.swift
//  Ins
//
//  Created by MhMuD SalAh!! on 7/6/19.
//  Copyright © 2019 Mahmoud Salah. All rights reserved.
//

import UIKit

protocol storyDelegate {
    func pressOnStoryCell()
}
class StoryTableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var storyCollectioView: UICollectionView!
    
    let arrayOfImages = [ UIImage(named: "stevejobs"), UIImage(named: "samsung"), UIImage(named: "microsoft"), UIImage(named: "huawei"), UIImage(named: "sony"), UIImage(named: "vodafone") ]
    
    let names = [ ("Apple"), ("Samsunge"), ("Microsoft"), ("Huawei"), ("Microsoft"), ("Sony"), ("Vodafone") ]
    
    
    var delegate: storyDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        storyCollectioView.delegate = self
        storyCollectioView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCollectionCell", for: indexPath) as! StoryCollectinCell
        
        cell.storyImage.image = self.arrayOfImages[indexPath.row]
        cell.storyLabel.text = self.names[indexPath.row]
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        delegate?.pressOnStoryCell()
//    }
    
    
}
