//
//  ProfileController.swift
//  UICollectionView+Swift
//
//  Created by Mobmaxime on 15/08/14.
//  Copyright (c) 2014 Jigar M. All rights reserved.
//

import UIKit
import QuartzCore

class ProfileController: UIViewController {

    @IBOutlet var BannerImage : UIImageView!
    @IBOutlet var ProfileImage : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. Circule profile picture
        //var layer : CALayer = self.ProfileImage?.layer
        self.ProfileImage.layer.cornerRadius = self.ProfileImage.frame.size.width / 2
        self.ProfileImage.layer.borderWidth = 3.5
        self.ProfileImage.layer.borderColor = UIColor.whiteColor().CGColor
        self.ProfileImage.clipsToBounds = true
        
        
        
        //2. Rectangle Profile shape
        /*
        var layer:CALayer = self.ProfileImage.layer!
        layer.shadowPath = UIBezierPath(rect: layer.bounds).CGPath
        layer.shouldRasterize = true;
        layer.rasterizationScale = UIScreen.mainScreen().scale
        layer.borderColor = UIColor.whiteColor().CGColor
        layer.borderWidth = 2.0
        layer.shadowColor = UIColor.grayColor().CGColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSizeMake(1, 3)
        layer.shadowRadius = 1.5
        self.ProfileImage.clipsToBounds = false
        */
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
