//
//  StudHandBookViewController.swift
//  Westview
//
//  Created by Natalie Ann on 5/19/16.
//  Copyright © 2016 Natalie Aguinaldo. All rights reserved.
//

import UIKit

class StudHandBookViewController: UIViewController, UIWebViewDelegate {
    
   
    
    
    @IBOutlet weak var hActivityInd: UIActivityIndicatorView!
    
    

    @IBOutlet var handbookWebView: UIWebView!
    var path = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hActivityInd.hidden = true

        // Do any additional setup after loading the view.
        path = NSBundle.mainBundle().pathForResource("student_handbook", ofType: "pdf")!
        
        
        let URL = NSURL.fileURLWithPath(path)
        
        handbookWebView.loadRequest(NSURLRequest(URL: URL))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        hActivityInd.hidden = false
        hActivityInd.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        hActivityInd.hidden = true
        hActivityInd.stopAnimating()
    }

 

}
