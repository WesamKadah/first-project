//
//  RegisterPlayersVC.swift
//  secret code
//
//  Created by Wessam Kadah on 20/01/1445 AH.
//

import UIKit

class RegisterPlayersVC: UIViewController, UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
   
    var players : [Int] = []
    var counte : Int = 0



    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if counte == 4 {
            print(counte)
            players = [1,2,3,4]
            return players.count
        }
        else {
            print(counte)
            players = [1,2,3,4,5,6,7,8]
            return players.count
        }
        return players.count
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewT1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RegisterPlayersCVcellT1", for: indexPath) as! RegisterPlayersCVcellT1
            return cell
        } else if collectionView == collectionViewT2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RegisterPlayersCVcellT2", for: indexPath) as! RegisterPlayersCVcellT2
            return cell
        }
        return UICollectionViewCell()

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
        
    }

 
    func chick(numberrr: String) -> String? {
            return numberrr
        }
    

    
    @IBOutlet weak var lblRegister: UILabel!
    
    @IBOutlet weak var lblEnterThe: UILabel!
    
    
    
    @IBOutlet weak var btnNOplayers: UIButton!

    
    @IBOutlet weak var collectionViewT1: UICollectionView!
    
    @IBOutlet weak var collectionViewT2: UICollectionView!
   
   
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionViewT1.delegate = self
        collectionViewT1.dataSource = self
        collectionViewT2.delegate = self
        collectionViewT2.dataSource = self
        
        let menuClosure: UIActionHandler = { [unowned self] action in
                   if action.title == "4 Players" {
                       self.counte = 4
                   } else if action.title == "8 Players" {
                       self.counte = 8
                   }
               }

               btnNOplayers.menu = UIMenu(children: [
                   UIAction(title: "4 Players", handler: menuClosure),
                   UIAction(title: "8 Players ", handler: menuClosure) ])
               btnNOplayers.showsMenuAsPrimaryAction = true
               btnNOplayers.changesSelectionAsPrimaryAction = true
        
       
  
        
    }
    
    }

