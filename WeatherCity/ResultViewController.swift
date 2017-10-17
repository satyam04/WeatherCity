//
//  ResultViewController.swift
//  WeatherCity
//
//  Created by Satyam Saluja on 30/09/17.
//  Copyright © 2017 Satyam Saluja. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var temperature:Double=0.0
    var Humidity=0.0
    var WindSpeed: Double=0.0
    var detail: String=""
    var cloudPercentage=0.0
    
    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var Cloudiness: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureLabel.text="Temperature:"+String(temperature)+"℃"
        humidityLabel.text="Humidity:"+String(Humidity)+"%"
        windSpeedLabel.text="Wind Speed:"+String(WindSpeed)+" meter/sec"
        descriptionLabel.text="Description:"+detail
        Cloudiness.text="Cloudiness:"+String(cloudPercentage)+"%"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
