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
    
    var arrayOfImages = [ UIImage(named: "stevejobs"), UIImage(named: "samsung"), UIImage(named: "microsoft"), UIImage(named: "huawei"), UIImage(named: "sony"), UIImage(named: "vodafone") ]
    
    var locations = [ ("America"), ("Korea"), ("America"), ("Chinese"), ("Japan"), ("Britain") ]
    
    var names = [ ("Apple"), ("Samsunge"), ("Microsoft"), ("Huawei"), ("Sony"), ("Vodafone") ]
    
    var descriptions = [ ("Apple Company."), ("Samsunge Company."), ("Microsoft Company."), ("Huawei Company."), ("Sony Company."), ("Vodafone Company.") ]
    
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
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let VC = storyboard?.instantiateViewController(withIdentifier: "PostSelectedVC") as! PostSelectedVC
        
        VC.nametext = names[indexPath.row]
        VC.descriptiontext = descriptions[indexPath.row]
        VC.locationtext = locations[indexPath.row]
        
        
        navigationController?.pushViewController(VC, animated: true)
     
    }
    

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (indexPath.section == 1){
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            arrayOfImages.remove(at: indexPath.row)
            descriptions.remove(at: indexPath.row)
            names.remove(at: indexPath.row)
            locations.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            }
        }
    }
    
    
}

 


