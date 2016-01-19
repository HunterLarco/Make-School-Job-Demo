//
//  MiniJobCell.swift
//  funthings
//
//  Created by Hunter on 1/18/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit

let MiniJobCellIdentifier = "MiniJobCell"
class MiniJobCell : UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var companyTitle: UILabel!
    @IBOutlet weak var position: UILabel!
    
    var job: Job? {
        didSet {
            companyTitle.text = job?.companyName
            position.text = job?.position
        }
    }
    
    static func nib() -> UINib {
        return UINib(nibName: MiniJobCellIdentifier, bundle: nil)
    }
    
}