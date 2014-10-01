UICollectionView-Swift
======================

Sample Swift Project using UICollectionView + Swift

Check My Swift Samples : 
=========================
https://github.com/JigarM/Swift-Tutorials


## Simple Tests of Swift Language (no Objective-C)

+ Methods & Properties
+ Closure
+ UIControlEvents
+ Button Target
+ Dictionary and Arrays
+ UICollection View
+ customCell (UICollectionView Cell)
+ JSON string
+ Provide tag and Draw the Custom Cell

## App Previews

### Hows Flow looks like ?: 

<p align="center">
<a href="http://s1282.photobucket.com/user/jigarm_0809/media/CollectionView_zps59d7aedf.gif.html" target="_blank"><img src="http://i1282.photobucket.com/albums/a534/jigarm_0809/CollectionView_zps59d7aedf.gif" border="0" alt=" photo CollectionView_zps59d7aedf.gif"/></a>
</p>


ToDo (Working on)
==========
+ Working on Remote images using AFNetworking
+ Edit/Delete Cell


## Edit/Delete Cell : 

### Objectie C : 

```objective-c
for(AlbumCell *cell in self.collectionView.visibleCells)
{
          NSIndexPath *indexPath = [self.collectionView indexPathForCell:cell];
          if ([indexPath row] != (dataArray.count - 1)){
                    //[cell.closeButton setHidden:NO];
                    cell.nameLbl.text = "Jigar M"
          }
}
```
### Swift
```swift
for item in self.collectionView!.visibleCells() as [AlbumCell] {
          var indexpath : NSIndexPath = self.collectionView!.indexPathForCell(item as AlbumCell)!
          var cell : AlbumCell = self.collectionView!.cellForItemAtIndexPath(indexpath) as AlbumCell
          
          // Get Label
          var lbl : UILabel = cell.viewWithTag(101) as UILabel
          lbl.text = "Jigar M"
}
```

## Require
OSX 10.9.3 and Xcode 6.x (beta for now)

## Swift

This project will highlight a few of the core language features about Swift, but I would read through these documents, I found them useful to learn more about Swift and understanding teh structure and syntax of the language:

* [__Apple Documentation__](https://developer.apple.com/library/prerelease/ios/documentation/swift/conceptual/swift_programming_language/index.html)
* [__Download the iBook__](https://itunes.apple.com/us/book/the-swift-programming-language/id881256329?mt=11)
* [__Swift Cheat Sheet__](https://github.com/grant/swift-cheat-sheet)
* [__Swift Language Highlights by Matt Galloway__](http://www.raywenderlich.com/73997/swift-language-highlights)


# Author

* [Jigar Maheshwari](http://twitter.com/jigar0809)

# License

          The MIT License (MIT)
        
          Copyright (c) 2014 Jigar M
        
          Permission is hereby granted, free of charge, to any person obtaining a copy
          of this software and associated documentation files (the "Software"), to deal
          in the Software without restriction, including without limitation the rights
          to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
          copies of the Software, and to permit persons to whom the Software is
          furnished to do so, subject to the following conditions:
          
          The above copyright notice and this permission notice shall be included in all
          copies or substantial portions of the Software.
          
          THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
          IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
          FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
          AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
          LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
          OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
          SOFTWARE.

