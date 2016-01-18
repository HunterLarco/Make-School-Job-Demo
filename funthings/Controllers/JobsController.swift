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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        jobsView.jobs = [createDemoJob(), createDemoJob(), createDemoJob()];
        jobsView.setupCollectionView()
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

