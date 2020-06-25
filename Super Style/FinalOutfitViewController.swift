//
//  FinalOutfitViewController.swift
//  Super Style
//
//  Created by Scarlett McArthur on 2020-06-24.
//  Copyright © 2020 Colby Anderson. All rights reserved.
//

import UIKit

class FinalOutfitViewController: UIViewController {
    
    var previousVC = WeatherViewController()
    var selectedEvent = ""
    var selectedWeather = ""

    @IBOutlet weak var finalOutfit: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let finalOutfitPicture = generateOutfit(event: selectedEvent, weather: selectedWeather)
        finalOutfit.image = finalOutfitPicture
    }
    
    @IBAction func newOutfit(_ sender: UIButton) {
        finalOutfit.image = generateOutfit(event: selectedEvent, weather: selectedWeather)
    }
    
    @IBAction func saveOutfit(_ sender: UIButton) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func generateOutfit(event: String, weather: String) -> UIImage {
        var image = UIImage()
        let random = Int.random(in: 1...15)
        var imageName : String
        
        if event == "casual" && weather == "cold" {
            imageName = "cc\(random)"
            image = UIImage(named: imageName) ?? UIImage(named: "cc1")!
        }
        else if event == "casual" && weather == "hot" {
            imageName = "ch\(random)"
            image = UIImage(named: imageName) ?? UIImage(named: "ch1")!
        }
        else if event == "formal" && weather == "cold" {
            imageName = "fc\(random)"
            image = UIImage(named: imageName) ?? UIImage(named: "fc1")!
        }
        else if event == "formal" && weather == "hot" {
            imageName = "fh\(random)"
            image = UIImage(named: imageName) ?? UIImage(named: "fh1")!
        }
        return image
    }

}
