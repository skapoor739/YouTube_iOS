//
//  TrendingCell.swift
//  YouTube
//
//  Created by Shivam Kapur on 17/12/16.
//  Copyright © 2016 Shivam Kapur. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {
    
    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
    
}
