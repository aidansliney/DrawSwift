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
    
    
 
    override func viewDidAppear(_ animated: Bool)
        
    {
        navigationController?.navigationBar.barTintColor = UIColor( red: 30/255, green: 30/255, blue:30/255, alpha: 0.2 )
    }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

 
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 38))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "baricon")
        imageView.image = image
        navigationItem.titleView = imageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func numberOfSections(in inCollectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tutorial.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt IndexPath: IndexPath )-> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TutorialCell", for: IndexPath as IndexPath)
        
        cell.layer.borderColor = UIColor( red: 50/255, green: 50/255, blue:50/255, alpha: 0.3 ).cgColor
        cell.layer.borderWidth = 0.3
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
    //prepare to go to TutorialView
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTutorialDetailSeg" {
            let destinationVC = segue.destination as! TutorialViewController
             destinationVC.passedBook = passedBook
             destinationVC.passedT = passedT
             destinationVC.passedLength = passedLength
        }
    }
    

    //go to TutorialView
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        rowSelected = indexPath.row
        let tutorial = self.tutorial[indexPath.row] as Tutorial
        passedBook = tutorial.book!
        passedT = tutorial.t!
        passedLength = tutorial.length!
        performSegue(withIdentifier: "toTutorialDetailSeg", sender: passedT)
    }
    

}
