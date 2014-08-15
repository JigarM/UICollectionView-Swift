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

    var Albums = String[]()
    
    @IBAction func EditAlbumPressed(sender : AnyObject) {
        if(self.navigationItem.rightBarButtonItem.title == "Edit"){
           self.navigationItem.rightBarButtonItem.title = "Done"
            /*for(CBProfilePhotoViewCell *cell in self.collectionView.visibleCells)
            {
            
            NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
            if ([indexPath row] != (dataArray.count - 1)){
            [cell.closeButton setHidden:NO];
            }
            }*/
            
            //var isaAlbumCell : AlbumCell
            for item: AnyObject in self.collectionView.visibleCells(){
                var indexpath : NSIndexPath = self.collectionView.indexPathForCell(item as AlbumCell)
                println(indexpath.row)
                //item.CloseImage.image = UIImage(named: "close.png") as UIImage
                
            }
        } else {
           self.navigationItem.rightBarButtonItem.title = "Edit"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Albums = ["a.png",  "b.png", "c.png", "d.png", "e.png", "f.png", "g.png", "h.png", "i.png", "j.png", "k.png", "l.png", "m.png",  "n.png", "o.png", "p.png", "q.png", "r.png", "s.png"]
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

    override func collectionView(collectionView: UICollectionView!, cellForItemAtIndexPath indexPath: NSIndexPath!) -> UICollectionViewCell! {
        
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
        
        let cell: AlbumCell = collectionView!.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as AlbumCell
        
        //var imagename = UTILITY.getRandomNumberBetween(1, To: 10).description + ".jpg"
        //cell.img.image = UIImage(named:imagename) as UIImage
        cell.AlbumImage.image = UIImage(named: Albums[indexPath.row])
        cell.backgroundView = UIImageView(image: UIImage(named: "photo-frame.png")) as UIView
        
        return cell
    }

    // pragma mark <UICollectionViewDelegate>

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    func collectionView(collectionView: UICollectionView?, shouldHighlightItemAtIndexPath indexPath: NSIndexPath?) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    func collectionView(collectionView: UICollectionView?, shouldSelectItemAtIndexPath indexPath: NSIndexPath?) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    func collectionView(collectionView: UICollectionView?, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath?) -> Bool {
        return false
    }

    func collectionView(collectionView: UICollectionView?, canPerformAction action: String?, forItemAtIndexPath indexPath: NSIndexPath?, withSender sender: AnyObject) -> Bool {
        return false
    }

    func collectionView(collectionView: UICollectionView?, performAction action: String?, forItemAtIndexPath indexPath: NSIndexPath?, withSender sender: AnyObject) {
    
    }
    */

}
