//
//  ViewController.swift
//  WeatherApp
//
//  Created by Kearia's macbook on 2019/2/3.
//  Copyright © 2019 Kearia's macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 

    @IBOutlet weak var stationIdLbl: UILabel!
    
    @IBOutlet weak var stationNameLbl: UILabel!
    
    @IBOutlet weak var addLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func requestData() {
        let url = URL.init(string: "https://stations-98a59.firebaseio.com/practice.json")
        let request = URLRequest.init(url: url!)
        let session = URLSession.shared
        let task = session.dataTask(with: request) { (data, res, error) in
            do {
                let dict = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [String : String]
                DispatchQueue.main.async {
                    self.stationIdLbl.text = dict["stationID"]
                    self.stationNameLbl.text = dict["stationName"]
                    self.addLbl.text = dict["stationAddress"]
                }
            } catch {
                print("no data")
            }
        }
            task.resume()
    }
}
