//
//  JobPostingView.swift
//  funthings
//
//  Created by Hunter on 1/16/16.
//  Copyright © 2016 larcolabs. All rights reserved.
//

import UIKit


class JobsView: UIView {
    
    var dataSource: ArrayDataSource?
    var jobs: [Job]?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func setupCollectionView() {
        dataSource = ArrayDataSource(items:jobs!, cellIdentifier: JobCellIdentifier) {
            (cell, item) in
            
            if let jobCell = cell as? JobCell {
                if let job = item as? Job {
                    jobCell.job = job
                }
            }
        }
        collectionView.dataSource = dataSource
        collectionView.delegate = self
        collectionView.pagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.registerNib(JobCell.nib(), forCellWithReuseIdentifier: JobCellIdentifier)
    }
    
}

extension JobsView: UICollectionViewDelegate {
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {}
}

extension JobsView: UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let width = (Int(collectionView.frame.size.width)) - 20
        let height = (Int(collectionView.frame.size.height)) - 20
        let size = CGSize(width: width, height: height)
        
        return size
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
    }
}