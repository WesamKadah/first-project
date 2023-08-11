//
//  categoriesCollectionViewCell.swift
//  secret code
//
//  Created by Wessam Kadah on 19/01/1445 AH.
//

import UIKit

class categoriesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var lblCategory: UILabel!
    
    func setUp(with Categories: categories){
        lblCategory.text = Categories.title
        
        
    }
}



