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
    
    var job: Job? {
        didSet {
            
        }
    }
    
    static func nib() -> UINib {
        return UINib(nibName: MiniJobCellIdentifier, bundle: nil)
    }
    
}