//
//  ViewController.swift
//  haste
//
//  Created by Sharath Rajasekar on 4/20/21.
//

import UIKit
import PolygonioSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        let polygon = PolygonioSwift.Client(key: "iZZC9GJWdPZnuTl9LfPlnK8ZCgdCNBts")
     
        polygon.dailyOpenClose(symbol: "AAPL", date: "2021-04-19") { (result: DailyOpenCloseResponse?, err) in
            // check if we got any errors
            if let err = err {
                print(err)
            } else {
                print(result)
            }
        }//dailyopenclose
    
    }//viewdidload

}//viewcontroller
