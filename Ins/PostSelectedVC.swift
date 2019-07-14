//
//  PostSelectedVC.swift
//  Ins
//
//  Created by MhMuD SalAh!! on 7/10/19.
//  Copyright © 2019 Mahmoud Salah. All rights reserved.
//

import UIKit

class PostSelectedVC: UIViewController {
    @IBOutlet weak var profileImage: FancyImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locaiotnLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    
    var nametext: String?
    var locationtext: String?
    var descriptiontext: String?
    
    var img = UIImage()
    var profileImg = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = nametext
        locaiotnLabel.text = locationtext
        descriptionLabel.text = descriptiontext
        postImage.image = img
        profileImage.image = profileImg
    }
    


}
