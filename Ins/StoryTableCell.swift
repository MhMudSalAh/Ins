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
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCollectionCell", for: indexPath)
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        delegate?.pressOnStoryCell()
//    }
    
    
}
