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
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
        let cell = tableView.dequeueReusableCell(withIdentifier: "storyTableCell") as! StoryTableCell
        
        return cell
        }
        else
        {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "postTableCell") as! PostTableCell
            
            return cell
        }
        
    }

    
}

 


