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
    var rowSelected = 0;
    var passedBook = "book 01"
    var passedT = ""
    var passedLength = 0


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
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 2
        
        let tutorial =  self.tutorial[IndexPath.row] as Tutorial //2
        
        if let nameLabel = cell.viewWithTag(8) as? UILabel { //3
            nameLabel.text = tutorial.book
        }
        
        if let levelLabel = cell.viewWithTag(9) as? UILabel { //3
            let color = UIColor(red: 0.5, green: 1,blue: 1,alpha: 1)
            levelLabel.backgroundColor = color
            levelLabel.text = tutorial.level
            
        }
        
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
        if segue.identifier == "toTutorialDetailSeg" {
            let destinationVC = segue.destination as! TutorialViewController
             destinationVC.passedBook = passedBook
             destinationVC.passedT = passedT
             destinationVC.passedLength = passedLength
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        rowSelected = indexPath.row
        let tutorial = self.tutorial[indexPath.row] as Tutorial
        passedBook = tutorial.book!
        passedT = tutorial.t!
        passedLength = tutorial.length!
        performSegue(withIdentifier: "toTutorialDetailSeg", sender: passedT)
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
