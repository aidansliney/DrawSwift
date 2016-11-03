//
//  BooksTableViewController.swift
//  Draw
//
//  Created by Aidan Sliney on 09/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit

class BooksTableViewController: UITableViewController {
    
    var book:[Book] = bookData
    var rowSelected = 0;
    var passedBookname = "book name"
    var passedTutorial: [Tutorial]?
    var passedLevel = "Level 0"
    var passedImagename = "image"
    var passedBanner = "banner"
    var passedH1 = "header"
    var passedBookNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
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
    
    override func numberOfSections(in intableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return book.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath )-> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: IndexPath as IndexPath)
        
        let book = self.book[IndexPath.row] as Book //2
        
        if let nameLabel = cell.viewWithTag(100) as? UILabel { //3
            nameLabel.text = book.bookname
        }
        if let levelLabel = cell.viewWithTag(101) as? UILabel {
            levelLabel.text = book.level
        }
        
        if let h1Label = cell.viewWithTag(102) as? UILabel {
            h1Label.text = book.h1
        }
        
        if let ratingImageView = cell.viewWithTag(103) as? UIImageView {
            ratingImageView.image = UIImage(named: book.cover!)
        }
        return cell
    }
    
    @IBAction func cancelToPlayersViewController(_ segue:UIStoryboardSegue) {
    }
    
    //preparing for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toBookDetailSeg" {
            let destinationVC = segue.destination as! BookDetailController
            destinationVC.passedImagename = passedImagename
            destinationVC.passedLevel = passedLevel
            destinationVC.passedBookname = passedBookname
            destinationVC.passedH1 = passedH1
            destinationVC.passedTutorial = passedTutorial
            destinationVC.passedBookNumber = passedBookNumber
            destinationVC.passedBanner = passedBanner
        }
    }
    // when a row is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     print (indexPath.row)
     rowSelected = indexPath.row
        let book = self.book[indexPath.row] as Book
        passedBookNumber = indexPath.row
        passedBookname = book.bookname!
        passedLevel = book.level!
        passedImagename = book.cover!
        passedBanner = book.banner!
        passedH1 = book.cover!
        passedTutorial = book.tutorial!
        print(book.tutorial!)
         print("BOOOM")
        performSegue(withIdentifier: "toBookDetailSeg", sender: passedH1)
    }


  
    @IBAction func goBack(_ sender: AnyObject) {
        
        print ("boom")
    }
   


}
