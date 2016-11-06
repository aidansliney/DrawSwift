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
    
    override func viewDidAppear(_ animated: Bool)
        
    {
        navigationController?.navigationBar.barTintColor = UIColor( red: 30/255, green: 30/255, blue:30/255, alpha: 0.2 )
    }
    

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
            levelLabel.text = book.title
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
            destinationVC.passedBookNumber = passedBookNumber
           
        }
    }
    // when a row is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     rowSelected = indexPath.row
        passedBookNumber = indexPath.row
        performSegue(withIdentifier: "toBookDetailSeg", sender: passedH1)
    }


  
    @IBAction func goBack(_ sender: AnyObject) {
        
        print ("boom")
    }
   


}
