//
//  FirstViewController.swift
//  Draw
//
//  Created by Aidan Sliney on 08/10/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var topImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        topImage.addGestureRecognizer(tapGesture)
        
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

