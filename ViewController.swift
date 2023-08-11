//
//  ViewController.swift
//  secret code
//
//  Created by Wessam Kadah on 19/01/1445 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnStart(_ sender: Any) {
        let vcCategorie = self.storyboard?.instantiateViewController(identifier: "categoriesViewController")
        navigationController?.pushViewController(vcCategorie!, animated: true)
     }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}

