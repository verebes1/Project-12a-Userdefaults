//
//  ViewController.swift
//  Project-12a-Userdefaults
//
//  Created by verebes on 28/06/2018.
//  Copyright © 2018 A&D Progress. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDefaults()
        readDefaults()
        
    }
    
    func setDefaults(){
        defaults.set(25, forKey: "Age")
        defaults.set(true, forKey: "UseTouchID")
        defaults.set(CGFloat.pi, forKey: "Pi")
        defaults.set("Paul Hudson", forKey: "Name")
        defaults.set(Date(), forKey: "LastRun")
        
        let array = ["Hello", "World"]
        defaults.set(array, forKey: "SavedArray")
        
        let dict = ["Name" : "Paul", "Country": "UK"]
        defaults.set(dict, forKey: "SavedDict")
    }

    func readDefaults(){
        let array = defaults.object(forKey: "SavedArray") as? [String] ?? [String]()
        print(array)
        
        let dict = defaults.object(forKey: "SavedDict") as? [String : String] ?? [String : String]()
        print(dict)
    }
    


}

