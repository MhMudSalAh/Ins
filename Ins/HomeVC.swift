//
//  HomeVC.swift
//  Ins
//
//  Created by MhMuD SalAh!! on 7/5/19.
//  Copyright © 2019 Mahmoud Salah. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let arrayOfImages = [ UIImage(named: "stevejobs"), UIImage(named: "samsung"), UIImage(named: "microsoft"), UIImage(named: "huawei"), UIImage(named: "sony"), UIImage(named: "vodafone") ]
    
    let locations = [ ("America"), ("Korea"), ("America"), ("Chinese"), ("Japan"), ("Britain") ]
    
    let names = [ ("Apple"), ("Samsunge"), ("Microsoft"), ("Huawei"), ("Microsoft"), ("Sony"), ("Vodafone") ]
    
    let descriptions = [ ("Apple Company."), ("Samsunge Company."), ("Microsoft Company."), ("Huawei Company."), ("Microsoft Company."), ("Sony Company."), ("Vodafone Company.") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if section == 0 {
            return 1
        }
        
        return arrayOfImages.count

     
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.section == 0){
        let cell = tableView.dequeueReusableCell(withIdentifier: "storyTableCell") as! StoryTableCell
        
        return cell
        }
        else
        {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "postTableCell",for: indexPath as IndexPath) as! PostTableCell
           
            cell.profileImage.image = self.arrayOfImages[indexPath.row]
            cell.postImage.image = self.arrayOfImages[indexPath.row]
            cell.nameLabel.text = self.names[indexPath.row]
            cell.locationLabel.text = self.locations[indexPath.row]
            cell.postLable.text = self.descriptions[indexPath.row]
            
            return cell
        }
        
    }

    
}

 


