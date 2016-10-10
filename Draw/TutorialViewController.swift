//
//  TutorialViewController.swift
//  Draw
//
//  Created by Aidan Sliney on 10/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    @IBOutlet weak var tutorialImage: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var helpText: UILabel!
   
    
    let book = "b01"
    let tutorial = "t01"
    var page = "01"
    let length = 27
    var counter = 1 // the first is 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previousButton.isEnabled=false
        tutorialImage.image = UIImage(named: book+tutorial+"p01")
        helpText.text = b01t01help[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func nextPage(_ sender: AnyObject) {
        counter += 1
        helpText.text = b01t01help[counter-1]
        previousButton.isEnabled=true
        page = NSString(format: "%02d", counter) as String
        tutorialImage.image = UIImage(named: book+tutorial+"p"+page)
        print(book+tutorial+"p"+String(page))
        
        if counter == length{
            nextButton.isEnabled=false}
    }
    
    @IBAction func previousPage(_ sender: AnyObject) {
        counter -= 1
        helpText.text = b01t01help[counter-1]
        nextButton.isEnabled=true
        page = NSString(format: "%02d", counter) as String
        tutorialImage.image = UIImage(named: book+tutorial+"p"+page)
        print(book+tutorial+"p"+String(page))
        
        if counter == 1{
            previousButton.isEnabled=false}
    }
    
    @IBAction func SwipeRight(_ sender: AnyObject) {
        print("right")
    }
    
    @IBAction func SwipeLeft(_ sender: AnyObject) {
        print("Left")
    }
    
    
}
