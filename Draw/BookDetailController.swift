//
//  BookDetailController.swift
//  Draw
//
//  Created by Aidan Sliney on 09/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit

class BookDetailController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    
    //passed here
    var passedBookNumber: Int? // 0 = book01
    
    var passedTutorial: [Tutorial]?
    var passedImagename: String?
    var passedTitle: String?
    var passedH1: String?
    var passedBanner: String?
    
    
    //passing onto to Tutorial
    var book:[Book] = bookData
    var rowSelected = 0;
    var passedBook = "Book 01"
    var passedT = ""
    var passedLength = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book = self.book[passedBookNumber!] as Book
        let passedBookname = book.bookname!
        passedTitle = book.title!
        passedImagename = book.cover!
        passedBanner = book.banner!
        passedH1 = book.cover!
        passedTutorial = book.tutorial!
        
        
        //set title and image
        self.navigationItem.title = passedBookname
        bookimage.image = UIImage(named: passedBanner!)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    
    // Amount of cells
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  passedTutorial!.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! myCollectionViewCell
        let pT =  (self.passedTutorial?[indexPath.row])! as Draw.Tutorial
        
        cell.myLabel.text = pT.text
        cell.myImage.image = UIImage(named: pT.image!)
        cell.layer.borderColor = UIColor( red: 50/255, green: 50/255, blue:50/255, alpha: 0.3 ).cgColor
        cell.layer.borderWidth = 0.3
        cell.layer.cornerRadius = 2
        return cell
    }
    
    //info at the top of the page
    @IBOutlet weak var bookimage: UIImageView!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var bookname: UILabel!
    @IBOutlet weak var h1: UILabel!
    
    
    //Preparing to go to the tutorial page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTutorialDetailFromBookSeg" {
            let destinationVC = segue.destination as! TutorialViewController
            destinationVC.passedBook = passedBook
            destinationVC.passedT = passedT
            destinationVC.passedLength = passedLength
        }
    }
    
    //Go to the tutorial page
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        rowSelected = indexPath.row
        let pT =  (self.passedTutorial?[indexPath.row])! as Draw.Tutorial
        passedBook = pT.book!
        passedT = pT.t!
        passedLength = pT.length!
        performSegue(withIdentifier: "toTutorialDetailFromBookSeg", sender: passedT)
    }
    
    @IBAction func goBack(_ sender: AnyObject) {
        self.navigationController?.popViewController(animated: true)
    }
}
