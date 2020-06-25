//
//  WeatherViewController.swift
//  Super Style
//
//  Created by Scarlett McArthur on 2020-06-24.
//  Copyright © 2020 Colby Anderson. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    var previousVC = EventViewController ()
    var selectedEvent = ""
    var weather = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func hotButton(_ sender: UIButton) {
        weather = "hot"
    }
    
    @IBAction func coldButton(_ sender: UIButton) {
        weather = "cold"
    }
    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let finalOutfitVC = segue.destination as? FinalOutfitViewController {
            finalOutfitVC.previousVC = self
            finalOutfitVC.selectedWeather = weather
            finalOutfitVC.selectedEvent = selectedEvent
        }
    }
    

}
