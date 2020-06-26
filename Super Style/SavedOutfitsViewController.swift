//
//  SavedOutfitsViewController.swift
//  Super Style
//
//  Created by Scarlett McArthur on 2020-06-24.
//  Copyright © 2020 Colby Anderson. All rights reserved.
//

import UIKit



class SavedOutfitsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    //@IBOutlet weak var imageView: UIImageView!
    
        
    var previousVC = FinalOutfitViewController()
    var savedOutfit = UIImage()
    
    override func viewDidLoad() {
           
           super.viewDidLoad()
        
           self.tableView.delegate = self
           self.tableView.dataSource = self

           // Do any additional setup after loading the view.
       }
       
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
   
    
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell (withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.imageView?.image = savedOutfit
        
        
        return cell
    }

  
    

    
    
    
 
    
    
}
