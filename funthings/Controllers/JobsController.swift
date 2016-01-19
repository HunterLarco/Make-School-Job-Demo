//
//  ViewController.swift
//  funthings
//
//  Created by Hunter on 1/15/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

class JobsController: UIViewController {
    
    @IBOutlet var jobsView: JobsView!
    
    var jobs: [Job]?
    var index: Int = 0

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Do any additional setup after loading the view, typically from a nib.
        
        jobsView.jobs = jobs
        jobsView.setupCollectionView()
        
        let indexPath = NSIndexPath(forItem: index, inSection: 0)
        jobsView.collectionView.scrollToItemAtIndexPath(indexPath, atScrollPosition: UICollectionViewScrollPosition.CenteredHorizontally, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCloseClicked(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

