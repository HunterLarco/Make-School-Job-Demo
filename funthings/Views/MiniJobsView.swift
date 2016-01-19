//
//  JobPostingView.swift
//  funthings
//
//  Created by Hunter on 1/16/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit


class MiniJobsView: UIView {
    
    var dataSource: ArrayDataSource?
    var jobs: [Job]?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func setupCollectionView() {
        dataSource = ArrayDataSource(items:jobs!, cellIdentifier: MiniJobCellIdentifier) {
            (cell, item) in
            
            if let jobCell = cell as? JobCell {
                if let job = item as? Job {
                    jobCell.job = job
                }
            }
        }
        collectionView.dataSource = dataSource
        collectionView.delegate = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.registerNib(MiniJobCell.nib(), forCellWithReuseIdentifier: MiniJobCellIdentifier)
    }
    
}

extension MiniJobsView: UICollectionViewDelegate {
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {}
}

extension MiniJobsView: UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let width = (Int(collectionView.frame.size.width) / 3) - 12
        let height = width;
        let size = CGSize(width: width, height: height)
        
        return size
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 9
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 9
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}