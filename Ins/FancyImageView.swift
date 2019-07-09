//
//  FancyImageView.swift
//  Ins
//
//  Created by MhMuD SalAh!! on 7/5/19.
//  Copyright © 2019 Mahmoud Salah. All rights reserved.
//

import UIKit

class FancyImageView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.masksToBounds = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.width/2
        //layer.cornerRadius = self.frame.height/3

    }


}
