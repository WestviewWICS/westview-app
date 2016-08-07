//
//  GradesViewController.swift
//  Westview
//
//  Created by Natalie Ann on 5/19/16.
//  Copyright © 2016 Natalie Aguinaldo. All rights reserved.
//

import UIKit

class GradesViewController: UIViewController,UIWebViewDelegate {
    
    @IBOutlet weak var gradesActivityInd: UIActivityIndicatorView!
    
    
    

    @IBOutlet var gradesWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        gradesActivityInd.hidden = true

        // Do any additional setup after loading the view.
        
        
        let URL = NSURL(string: "https://sis.powayusd.com/Login_Student_PXP.aspx")
        
        gradesWebView.loadRequest(NSURLRequest(URL: URL!))

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func webViewDidStartLoad(webView: UIWebView) {
        gradesActivityInd.hidden = false
        gradesActivityInd.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        gradesActivityInd.hidden = true
        gradesActivityInd.stopAnimating()
    }

}
