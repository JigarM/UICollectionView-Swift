//
//  AlbumViewController.swift
//  UICollectionView+Swift
//
//  Created by Mobmaxime on 14/08/14.
//  Copyright (c) 2014 Jigar M. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class AlbumViewController: UICollectionViewController {

    var Albums = Array<String>()
    
    @IBAction func EditAlbumPressed(sender : AnyObject) {
        
        if(self.navigationItem.rightBarButtonItem?.title == "Edit"){
        
            self.navigationItem.rightBarButtonItem?.title = "Done"
            
            //Looping through CollectionView Cells in Swift
            //http://stackoverflow.com/questions/25490380/looping-through-collectionview-cells-in-swift
            
            for item in self.collectionView!.visibleCells() as [AlbumCell] {
                
                var indexpath : NSIndexPath = self.collectionView!.indexPathForCell(item as AlbumCell)!
                var cell : AlbumCell = self.collectionView!.cellForItemAtIndexPath(indexpath) as AlbumCell
                
                //Profile Picture
                //var img : UIImageView = cell.viewWithTag(100) as UIImageView
                //img.image = UIImage(named: "q.png") as UIImage
                
                //Close Button
                var close : UIButton = cell.viewWithTag(102) as UIButton
                close.hidden = false
            }
        } else {
            self.navigationItem.rightBarButtonItem?.title = "Edit"
            self.collectionView?.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Albums = ["a.png",  "b.png", "c.png", "d.png", "e.png", "f.png", "g.png", "h.png", "i.png", "j.png", "k.png", "l.png", "m.png"]
    }

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */

    // #pragma mark UICollectionViewDataSource
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView?) -> Int {
        return 1
    }


    override func collectionView(collectionView: UICollectionView?, numberOfItemsInSection section: Int) -> Int {
        return Albums.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        /*
        We can use multiple way to create a UICollectionViewCell.
        */
        
        
        //1.
        //We can use Reusablecell identifier with custom UICollectionViewCell
        
        /*
        let cell = collectionView!.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as UICollectionViewCell
        
        var AlbumImage : UIImageView = cell.viewWithTag(100) as UIImageView
        AlbumImage.image = UIImage(named: Albums[indexPath.row])
        */
        
        
        
        //2.
        //You can create a Class file for UICollectionViewCell and Set the appropriate component and assign the value to that class
        
        let cell : AlbumCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as AlbumCell
        cell.backgroundView = UIImageView(image: UIImage(named: "photo-frame.png")) as UIView
        cell.AlbumImage?.image = UIImage(named: Albums[indexPath.row])
        
        if self.navigationItem.rightBarButtonItem!.title == "Edit" {
            cell.CloseImage?.hidden = true
        } else {
            cell.CloseImage?.hidden = false
        }
        
        //Layer property in Objective C => "http://iostutorialstack.blogspot.in/2014/04/how-to-assign-custom-tag-or-value-to.html"
        cell.CloseImage?.layer.setValue(indexPath.row, forKey: "index")
        
        
        cell.CloseImage?.addTarget(self, action: "deletePhoto:", forControlEvents: UIControlEvents.TouchUpInside)
        return cell
    }
    
    func deletePhoto(sender:UIButton) {
        let i : Int = (sender.layer.valueForKey("index")) as Int
        Albums.removeAtIndex(i)
        self.collectionView!.reloadData()
    }
}
