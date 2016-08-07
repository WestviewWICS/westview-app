//
//  CalendarViewController.swift
//  Westview
//
//  Created by Natalie Ann on 8/1/16.
//  Copyright © 2016 Natalie Aguinaldo. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController, UIWebViewDelegate
{


    
    
    
    
    
    
    @IBOutlet weak var calendarWebView: UIWebView!

    
    @IBOutlet weak var calendarIND: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendarIND.hidden = true
        
        
        let URL = NSURL (string: "http://www2.powayusd.com/pusdwvhs/calendar.shtml")
        
        calendarWebView.loadRequest(NSURLRequest(URL: URL!))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func webViewDidStartLoad(webView: UIWebView) {
        calendarIND.hidden = false
        calendarIND.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        calendarIND.hidden = true
        calendarIND.stopAnimating()
    }
}
