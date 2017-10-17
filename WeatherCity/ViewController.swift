//
//  ViewController.swift
//  WeatherCity
//
//  Created by Satyam Saluja on 29/09/17.
//  Copyright © 2017 Satyam Saluja. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON



class ViewController: UIViewController {
    
    @IBAction func SearchButton(_ sender: Any) {
        var city=cityTextFeild.text!
        let data:Parameters=["appid":"b206992225e3cd077650e30723e89229"]
        Alamofire.request("https://api.openweathermap.org/data/2.5/weather?q=\(city)", method: .get, parameters: data).responseJSON(completionHandler: { response in
            let json=JSON(response.result.value!)
            print(json)
            let name=json["name"].string!
            print("Name-->\(name)")
            // next screen show
            //let storyboard=UIStoryboard(name: "main", bundle: nil)
            let storyboard=UIStoryboard(name: "Main", bundle: nil)
            let vc=storyboard.instantiateViewController(withIdentifier: "resultVc") as! ResultViewController
            //extractiong temperature
            let temp=json["main"]["temp"].double!
            vc.temperature=temp-273.15
            //extractiong humidity
            let humidity=json["main"]["humidity"].double!
            vc.Humidity=humidity
            //extracting wind speed
            let windSpeed=json["wind"]["speed"].double!
            vc.WindSpeed=windSpeed
            // extracting description
            let detailsArray=json["weather"].arrayValue
            let details=detailsArray.first!["description"].string!
            vc.detail=details
            //extracting cloud percentage
            let cloudPercentage=json["clouds"]["all"].double!
            vc.cloudPercentage=cloudPercentage
            //self.present(vc, animated: true, completion: nil)
            self.present(vc, animated: true, completion: nil)
        })
    }
    
    @IBOutlet weak var cityTextFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

