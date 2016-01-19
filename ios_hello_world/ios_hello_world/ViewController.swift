//
//  ViewController.swift
//  ios_hello_world
//
//  Created by Yuichi Murata on 2016/01/19.
//  Copyright © 2016年 Yuichi Murata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapHandler(sender: AnyObject) {
        self.textField.text = "Hello world!";
    }
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

