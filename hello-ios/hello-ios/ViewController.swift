//
//  ViewController.swift
//  hello-ios
//
//  Created by Yuichi Murata on 2016/01/18.
//  Copyright © 2016年 Yuichi Murata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tapHandler(sender: AnyObject) {
        myTextField.text = "This is modified."
    }
    
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

