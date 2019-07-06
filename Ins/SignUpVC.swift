//
//  SignUpVC.swift
//  Ins
//
//  Created by MhMuD SalAh!! on 7/5/19.
//  Copyright © 2019 Mahmoud Salah. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @IBAction func backToSignInVC(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
   

}
