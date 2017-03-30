//
//  SecondViewController.swift
//  To-Do-List
//
//  Created by admin on 30/03/17.
//  Copyright © 2017 ACE. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var inputTask: UITextField!
    
    @IBAction func saveTask(_ sender: Any) {
        let itemObjects = UserDefaults.standard.object(forKey: "items")
        print(itemObjects)
        var items:[String]
        
        if let checkObjects = itemObjects as? [String]{
            items = checkObjects
            items.append(inputTask.text!)
        
        }
        else{
            items = [inputTask.text!]
        }
        inputTask.text=""
        UserDefaults.standard.set(items, forKey: "items")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputTask.resignFirstResponder()
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

