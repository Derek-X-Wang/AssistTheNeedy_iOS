//
//  File.swift
//  AssistTheNeedy
//
//  Created by Xinzhe Wang on 9/28/15.
//  Copyright © 2015 Xinzhe Wang. All rights reserved.
//

import Foundation
import UIKit

class PageItemController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var pageIndex: Int!
    var imageFile: String!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.imageView.image = UIImage(named: self.imageFile)
        
//        var pageControl = UIPageControl.appearance()
//        pageControl.pageIndicatorTintColor = UIColor.lightGrayColor()
//        pageControl.currentPageIndicatorTintColor = UIColor.blackColor()
//        pageControl.backgroundColor = UIColor.whiteColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}