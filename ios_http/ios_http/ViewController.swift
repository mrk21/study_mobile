//
//  ViewController.swift
//  ios_http
//
//  Created by Yuichi Murata on 2016/02/02.
//  Copyright © 2016年 Yuichi Murata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapHandler(sender: AnyObject) {
        var result: String = ""
        
        // create the url-request
        let urlString = "http://httpbin.org/get"
        var request = NSMutableURLRequest(URL: NSURL(string: urlString)!)
        
        // set the method(HTTP-GET)
        request.HTTPMethod = "GET"
        
        // use NSURLSessionDataTask
        var task = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: { data, response, error in
            if (error == nil) {
                var res = NSString(data: data!, encoding: NSUTF8StringEncoding)!
                result = res as String
            } else {
                result = error!.description
            }
            
            dispatch_async(dispatch_get_main_queue(), {
                self.result.text = result
            })
        })
        task.resume()
    }
}