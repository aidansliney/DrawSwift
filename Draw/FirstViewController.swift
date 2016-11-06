//
//  FirstViewController.swift
//  Draw
//
//  Created by Aidan Sliney on 08/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class FirstViewController: UIViewController {
    
    var tutorial:[Tutorial] = book0Tutorials

    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var playerView: UIView!
    @IBOutlet weak var playVideo: UIImageView!
    @IBOutlet weak var tutorialImage: UIImageView!
    //top card
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var topTitle: UILabel!
    
    // pull in books tutorial
    var book:[Book] = bookData
    
    
    override func viewDidAppear(_ animated: Bool)

    {
        navigationController?.navigationBar.barTintColor = UIColor( red: 30/255, green: 30/255, blue:30/255, alpha: 0.2 )
    }
    
    

        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Prepare images for tapping
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        let tapGestureVideo = UITapGestureRecognizer(target: self, action: #selector(handleTapVideo))
        let tapGestureTutorial = UITapGestureRecognizer(target: self, action: #selector(handleTapTutorial))
        topImage.addGestureRecognizer(tapGesture)
        playVideo.addGestureRecognizer(tapGestureVideo)
        tutorialImage.addGestureRecognizer(tapGestureTutorial)
        
        // Icon in the bar
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 38, height: 38))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "baricon")
        imageView.image = image
        navigationItem.titleView = imageView
        
        
        // Set top card
        let book = self.book[homeTopBook] as Book
        topImage.image = UIImage(named:book.cover!)
        topTitle.text = book.title
       

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    func handleTap(sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "newToBookDetailSeg", sender: sender)
        print("tap")
    }
    
    func handleTapTutorial(sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "toTutorialDetailFromTutCardSeg", sender: sender)
        print("tap")
    }
    
    func handleTapVideo(sender: UITapGestureRecognizer) {
        print("tapVideo")
        let path = Bundle.main.path(forResource: "video", ofType:"mp4")
        let player = AVPlayer(url: NSURL(fileURLWithPath: path!) as URL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
    }
    
    
    //preparing for segue to book
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newToBookDetailSeg" {
            let destinationVC = segue.destination as! BookDetailController
            destinationVC.passedBookNumber = homeTopBook

        }
        //Tutorial segue
        if segue.identifier == "toTutorialDetailFromTutCardSeg" {
            let destinationVC2 = segue.destination as! TutorialViewController
            
            let tutorial = self.tutorial[0] as Tutorial
            destinationVC2.passedBook = tutorial.book!
            destinationVC2.passedT = tutorial.t!
            destinationVC2.passedLength = tutorial.length!
        }
    }
}

