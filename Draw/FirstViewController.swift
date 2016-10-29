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

    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var playerView: UIView!
    @IBOutlet weak var playVideo: UIImageView!
    
    @IBOutlet weak var topImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        topImage.addGestureRecognizer(tapGesture)
        
        let tapGestureVideo = UITapGestureRecognizer(target: self, action: #selector(handleTapVideo))
        playVideo.addGestureRecognizer(tapGestureVideo)
        
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
    
   
    func handleTap(sender: UITapGestureRecognizer) {
        performSegue(withIdentifier: "newToBookDetailSeg", sender: sender)
        print("tap")
    }
    
    func handleTapVideo(sender: UITapGestureRecognizer) {
        print("tapVideo")
        let videoURL = NSURL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let player = AVPlayer(url: videoURL! as URL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        self.present(playerViewController, animated: true) {
            playerViewController.player!.play()
        }
    }
    
    
    //preparing for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newToBookDetailSeg" {
            let destinationVC = segue.destination as! BookDetailController
            destinationVC.passedImagename = bookData[1].cover
            destinationVC.passedLevel = bookData[1].level
            destinationVC.passedBookname = bookData[1].bookname
            destinationVC.passedH1 = bookData[1].h1
            
            destinationVC.passedTutorial = bookData[1].tutorial
        }
    }

}

