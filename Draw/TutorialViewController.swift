//
//  TutorialViewController.swift
//  Draw
//
//  Created by Aidan Sliney on 10/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit
import Kingfisher


class TutorialViewController: UIViewController {

    @IBOutlet weak var tutorialImage: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var helpText: UILabel!

    //swipe
    @IBOutlet var background: UIView!
    //variables passed by segues
    var passedBook: String?
    var passedT: String?
    var passedLength: Int?
    
    
    var book = String()
    var bookLong = String()
    var tutorial = String()
    var page = "01"
    var length = Int()
    var counter = 1
    var iUS = "" // start of Url
    let iUE = ".png?alt=media" //end of Url
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        self.view.addGestureRecognizer(swipeDown)
        
        
        //set color for tutorial
        if passedBook == "book00"
        {
        print ("This is the tutorial")
            background.backgroundColor = UIColor( red: 52/255, green: 54/255, blue:50/255, alpha: 1.0 )        }
        
        
        previousButton.isEnabled = false
        //set the first image
        bookLong = passedBook!
        book = "b" + String(bookLong.characters.dropFirst(4))
        print ("book" + book)
        tutorial = passedT!
        print ("passedT" + passedT!)
        length = passedLength!
        print (passedLength!)
    
        iUS = "https://firebasestorage.googleapis.com/v0/b/draw-891c7.appspot.com/o/phone%2F"+bookLong+"%2F"
        let url = URL(string: iUS+book+tutorial+"p01"+iUE)!
        tutorialImage.kf.indicatorType = .activity
        tutorialImage.kf.setImage(with: url)
        //set the first help text
        helpText.text = helpTextD[book+tutorial+"p01"]
        //create array of image NSUrls
        var urls : [NSURL] = [];
        for index in 1...length {
            page = NSString(format: "%02d", index) as String
            urls.append(NSURL(string: iUS+book+tutorial+"p"+page+iUE)!)
        }
        
        //prefetch the images
        let prefetcher = ImagePrefetcher(urls: urls as [URL])
        prefetcher.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextPage(_ sender: AnyObject) {
        nextPage()
       
    }
    
    @IBAction func previousPage(_ sender: AnyObject) {
            previousPage()
    }
    
    
    func previousPage(){
        counter -= 1
        nextButton.isEnabled = true
        page = NSString(format: "%02d", counter) as String
        helpText.text = helpTextD[book+tutorial+"p"+page]
        tutorialImage.image = UIImage(named: book+tutorial+"p"+page)
        let url = URL(string: iUS+book+tutorial+"p"+page+iUE)!
        tutorialImage.kf.indicatorType = .activity
        tutorialImage.kf.setImage(with: url)
        
        if counter == 1{
            previousButton.isEnabled=false}
    }
    
    
    func nextPage(){
        counter += 1
        previousButton.isEnabled=true
        page = NSString(format: "%02d", counter) as String
        helpText.text = helpTextD[book+tutorial+"p"+page]
        let url = URL(string: iUS+book+tutorial+"p"+page+iUE)!
        tutorialImage.kf.indicatorType = .activity
        tutorialImage.kf.setImage(with: url)
        
        if counter == length{
            nextButton.isEnabled=false}
    }
    
    
    
    //duds
    @IBAction func SwipeRight(_ sender: AnyObject) {
        print("right")
    }
    
    @IBAction func SwipeLeft(_ sender: AnyObject) {
        print("Left")
    }
    
    @IBAction func goBack(_ sender: AnyObject) {
        if let navigationController = self.navigationController
        {
            navigationController.popViewController(animated: true)
        }
    }
    
    //correct
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                 if counter != 1{
                    previousPage()
                }
            case UISwipeGestureRecognizerDirection.down:
                print("Swiped down")
            case UISwipeGestureRecognizerDirection.left:
                if counter != length{
                nextPage()
                }
            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up")
            default:
                break
            }
        }
    }
    
}
