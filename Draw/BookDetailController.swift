//
//  BookDetailController.swift
//  Draw
//
//  Created by Aidan Sliney on 09/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit

class BookDetailController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var tutorial:[Tutorial] = book1Tutorials
    var passedTutorial: [Tutorial]?
    var passedImagename: String?
    var passedLevel: String?
    var passedBookname: String?
    var passedH1: String?
    
    var passedBookNumber = 3
    
    
    //passing onto to Tutorial
    var book:[Book] = bookData
    var rowSelected = 0;
    var passedBook = "Book 01"
    var passedT = ""
    var passedLength = 0
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard

        // Amount of cells
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return  passedTutorial!.count
        }
        
        // make a cell for each cell index path
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            // get a reference to our storyboard cell
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! myCollectionViewCell
            let pT =  (self.passedTutorial?[indexPath.row])! as Draw.Tutorial
           
            
            print (pT)
                cell.myLabel.text = pT.text
                cell.myImage.image = UIImage(named: pT.image!)
                cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
                cell.layer.borderWidth = 1
                cell.layer.cornerRadius = 2
                return cell
        }
   
        //info at the top of the page
    @IBOutlet weak var bookimage: UIImageView!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var bookname: UILabel!
    @IBOutlet weak var h1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("passed Level" + passedLevel! )
        level.text = passedLevel
        bookname.text = passedBookname
        h1.text = passedH1
        bookimage.image = UIImage(named: passedImagename!)
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
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
