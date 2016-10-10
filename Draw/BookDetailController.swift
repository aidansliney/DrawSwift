//
//  BookDetailController.swift
//  Draw
//
//  Created by Aidan Sliney on 09/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit

class BookDetailController: UIViewController {
    
    var passedImagename: String?
    var passedLevel: String?
    var passedBookname: String?
    var passedH1: String?

    @IBOutlet weak var bookimage: UIImageView!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var bookname: UILabel!
    @IBOutlet weak var h1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    @IBAction func cancelToBookDetailViewController(segue:UIStoryboardSegue) {
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
