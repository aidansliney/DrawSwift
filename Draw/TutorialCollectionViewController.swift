//
//  TutorialCollectionViewController.swift
//  Draw
//
//  Created by Aidan Sliney on 09/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class TutorialCollectionViewController: UICollectionViewController {
    
    var tutorial:[Tutorial] = tutorialData
    var book:[Book] = bookData

    
    fileprivate let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    override func numberOfSections(in inCollectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tutorial.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt IndexPath: IndexPath )-> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TutorialCell", for: IndexPath as IndexPath)
        
        let tutorial =  self.tutorial[IndexPath.row] as Tutorial //2
        
        if let nameLabelTutorial = cell.viewWithTag(10) as? UILabel { //3
            nameLabelTutorial.text = tutorial.text
        }

        if let tutorialImage = cell.viewWithTag(11) as? UIImageView {
          tutorialImage.image = UIImage(named: tutorial.image!)
           
        }
        return cell
    }
    
    @IBAction func cancelToPlayersViewController(_ segue:UIStoryboardSegue) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "toBookDetailSeg" {
//            let destinationVC = segue.destination as! BookDetailController
//            destinationVC.passedImagename = passedImagename
//            destinationVC.passedLevel = passedLevel
//            destinationVC.passedBookname = passedBookname
//            destinationVC.passedH1 = passedH1
//        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print (indexPath.row)
//        rowSelected = indexPath.row
//        let book = self.book[indexPath.row] as Book
//        passedBookname = book.bookname!
//        passedLevel = book.level!
//        passedImagename = book.cover!
//        passedH1 = book.cover!
//        performSegue(withIdentifier: "toBookDetailSeg", sender: passedH1)
    }
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

    
    

}
