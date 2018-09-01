//
//  ViewController.swift
//  magicnumbers2
//
//  Created by xander on 02.05.2018.
//  Copyright © 2018 xander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var person:[Person]? = nil
    
    
    @IBAction func addPerson(_ sender: UIButton) {
    
        
    }
    

    // Перед загрузкой контроллера
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if CoreDataHandler.saveObject(arraynum: "4444", date: "19820925", name: "Xander", number: "9") {
        person = CoreDataHandler.fetchObject()
        
        for i in person! {
            print(i.name!)
        }
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

