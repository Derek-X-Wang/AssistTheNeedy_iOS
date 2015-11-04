//
//  ViewController.swift
//  AssistTheNeedy
//
//  Created by Xinzhe Wang on 9/20/15.
//  Copyright (c) 2015 Xinzhe Wang. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController , UIPageViewControllerDataSource {
    
    var pageViewController: UIPageViewController!
    var pageImages: NSArray!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.pageImages = NSArray(objects: "frame1", "frame2", "frame3", "frame4", "frame5", "frame6", "frame7", "frame8", "frame9")
        
        self.pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PageController") as! UIPageViewController
        self.pageViewController.dataSource = self
        
        var startVC = self.viewControllerAtIndex(0) as PageItemController
        var viewControllers = NSArray(object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as! [UIViewController], direction: .Forward, animated: true, completion: nil)
        
        self.pageViewController.view.frame = CGRectMake(0, 30, self.view.frame.width, self.view.frame.size.height - 60)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        self.pageViewController.didMoveToParentViewController(self)
        
//        var pageControl = UIPageControl.appearance()
//        pageControl.pageIndicatorTintColor = UIColor.lightGrayColor()
//        pageControl.currentPageIndicatorTintColor = UIColor.blackColor()
//        pageControl.backgroundColor = UIColor.whiteColor()
//        self.view.addSubview(pageControl)
        
        //configurePageControl()
        
    }
    
//    func configurePageControl() {
//        
//        var pageControl = UIPageControl.appearance()
//        pageControl.numberOfPages = pageImages.count
//        pageControl.currentPage = 0
//        pageControl.tintColor = UIColor.redColor()
//        pageControl.pageIndicatorTintColor = UIColor.blackColor()
//        pageControl.currentPageIndicatorTintColor = UIColor.greenColor()
//        view.addSubview(pageControl)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewControllerAtIndex(index: Int) -> PageItemController
    {
        if ((self.pageImages.count == 0) || (index >= self.pageImages.count)) {
            return PageItemController()
        }
        
        var vc: PageItemController = self.storyboard?.instantiateViewControllerWithIdentifier("PageItemController") as! PageItemController
        
        vc.imageFile = self.pageImages[index] as! String
        vc.pageIndex = index
        
        return vc
        
        
    }
    
    
    // MARK: - Page View Controller Data Source
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        
        var vc = viewController as! PageItemController
        var index = vc.pageIndex as Int
        
        if (index == 0 || index == NSNotFound)
        {
            return nil
            
        }
        
        index--
        return self.viewControllerAtIndex(index)
        
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        var vc = viewController as! PageItemController
        var index = vc.pageIndex as Int
        
        if (index == NSNotFound)
        {
            return nil
        }
        
        index++
        
        if (index == self.pageImages.count)
        {
            return nil
        }
        
        return self.viewControllerAtIndex(index)
        
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return self.pageImages.count
    }
    
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
    {
        return 0
    }
    
}

