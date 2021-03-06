//
//  MiniJobsController.swift
//  funthings
//
//  Created by Hunter on 1/18/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

class MiniJobsController : UIViewController {
    
    @IBOutlet var miniJobsView: MiniJobsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        miniJobsView.delegate = self
        miniJobsView.jobs = [createDemoJob(), createDemoJob(), createDemoJob(), createDemoJob(), createDemoJob(), createDemoJob(), createDemoJob()];
        miniJobsView.setupCollectionView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createDemoJob() -> Job {
        return Job(
            companyName: "larcolabs",
            contactName: "Hunter Larco",
            contactEmail: "hunter@larcolabs.com",
            description: "lipsum",
            position: "iOS Engineer (Swift)"
        )
    }

}

extension MiniJobsController : MiniJobsViewDelegate {
    
    func onJobSelect(job: Job, index: Int){
        self.performSegueWithIdentifier("segueToExpandedJobView", sender: index)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let destination = segue.destinationViewController as! JobsController
        let index = sender as! Int
        
        destination.jobs = miniJobsView.jobs
        destination.index = index
    }
    
}