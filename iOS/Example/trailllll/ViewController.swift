//
//  ViewController.swift
//  trailllll
//
//  Created by NikhilManapure on 08/27/2019.
//  Copyright (c) 2019 NikhilManapure. All rights reserved.
//

import UIKit
import trailllll


class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if EventValidator.validate(event: "asdf", props: ["asdf": "asdfasdf"]) {
            print("Yoooooooooo")
        } else {
            print("Noooooooooo")
        }

        if EventValidator.validate(event: "asdf", props: ["name": "Eggs", "price": 34.99]) {
            print("Yoooooooooo")
        } else {
            print("Noooooooooo")
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

