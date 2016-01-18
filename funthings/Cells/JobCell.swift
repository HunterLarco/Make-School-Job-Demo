//
//  JobPostingCell.swift
//  funthings
//
//  Created by Hunter on 1/18/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

let JobCellIdentifier = "JobCell"
class JobCell : UICollectionViewCell {
    
    @IBOutlet weak var companyTitle: UILabel!
    
    var job: Job? {
        didSet {
            companyTitle.text = job!.companyName
        }
    }
    
    static func nib() -> UINib {
        return UINib(nibName: JobCellIdentifier, bundle: nil)
    }
    
}