//
//  EventViewController.swift
//  Super Style
//
//  Created by Scarlett McArthur on 2020-06-24.
//  Copyright © 2020 Colby Anderson. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
var event = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func casualButton(_ sender: UIButton) {
        event = "casual"
    }
    
    @IBAction func formalButton(_ sender: UIButton) {
        event = "formal"
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let weatherVC = segue.destination as? WeatherViewController {
            weatherVC.previousVC = self
            weatherVC.selectedEvent = event 
        }
    }
    
    

}


