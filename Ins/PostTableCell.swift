//
//  PostTableCell.swift
//  Ins
//
//  Created by MhMuD SalAh!! on 7/6/19.
//  Copyright © 2019 Mahmoud Salah. All rights reserved.
//

import UIKit

class PostTableCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postLable: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
}
