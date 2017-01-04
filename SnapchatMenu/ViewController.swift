//
//  ViewController.swift
//  SnapchatMenu
//
//  Created by Njeri Cooper on 1/2/17.
//  Copyright © 2017 Njeri Cooper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.scrollView.frame = self.view.bounds
            
        CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: self.view.frame.height)
        
    
        
        
        var v1 : View1 = View1(nibName: "View1", bundle: nil)
        var v2 : View2 = View2(nibName: "View2", bundle: nil)
        var v3 : View3 = View3(nibName: "View3", bundle: nil)
        
        self.addChildViewController(v1)
        self.scrollView.addSubview(v1.view)
        v1.didMove(toParentViewController: self)
        
        self.addChildViewController(v2)
        self.scrollView.addSubview(v2.view)
        v2.didMove(toParentViewController: self)
        
        self.addChildViewController(v3)
        self.scrollView.addSubview(v3.view)
        v3.didMove(toParentViewController: self)
        
        var v2Frame : CGRect = v2.view.frame
        v2Frame.origin.x = self.view.frame.width
        v2.view.frame = v2Frame
        
        var v3Frame : CGRect = v3.view.frame
        v3Frame.origin.x = 2 * self.view.frame.width
        v3.view.frame = v3Frame
        //v3.view.sizeToFit = true
        
        self.scrollView.contentSize = CGSize(width: self.view.frame.width * 3, height: self.view.frame.size.height)
        
        self.scrollView.contentOffset = CGPoint(x: self.view.frame.width, y: 0.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

