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
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard

    
        // Amount of cells
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return  passedTutorial!.count
        }
        
        // make a cell for each cell index path
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            // get a reference to our storyboard cell
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! myCollectionViewCell
            let pT =  self.tutorial[indexPath.row] as Draw.Tutorial
           
                cell.myLabel.text = pT.text
                cell.myImage.image = UIImage(named: pT.image!)
                cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
                cell.layer.borderWidth = 1
                cell.layer.cornerRadius = 2
                return cell
            
        }
        
        // MARK: - UICollectionViewDelegate protocol
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            // handle tap events
            print("You selected cell #\(indexPath.item)!")
        }



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
    
    @IBAction func cancelToBookDetailViewController(_ segue:UIStoryboardSegue) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
