//
//  PopUpViewController.swift
//  Draw
//
//  Created by Aidan Sliney on 20/11/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit
import StoreKit
import EZLoadingActivity

class PopUpViewController: UIViewController {
    
    var parentBanner: String!
    var parentBookName: String!
    var parentBookNumber: Int!
    let product: SKProduct? = nil
    var products = [SKProduct]()
    var book:[Book] = bookData

    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
        self.showAnimate()
        //if parent is bookpage
        if let parentVC = self.parent as? BookDetailController {
            parentBookNumber = parentVC.passedBookNumber
        }
        //if parent is Tutorial
        if let parentVCT = self.parent as? TutorialCollectionViewController {
            parentBookNumber = parentVCT.passBookNumber
        }
        //get book details
        let book = self.book[parentBookNumber] as Book
            
        topImage.image = UIImage(named: book.cover!)//set banner image
        bookName.text = book.bookname //set book name

        //fill array with products
        RageProducts.store.requestProducts{success, products in
            if success {
                self.products = products!
            }
            
        // Button
        self.buyButton.backgroundColor = .clear
        self.buyButton.layer.cornerRadius = 5
        self.buyButton.layer.borderWidth = 1
        self.buyButton.layer.borderColor = UIColor.blue.cgColor
            
        self.buyButton.contentEdgeInsets = UIEdgeInsetsMake(10,10,10,10)
            
        // Set button text as price
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = products?[self.parentBookNumber].priceLocale
        let cost = formatter.string(from: (products?[self.parentBookNumber].price)!)
        self.buyButton.setTitle(cost, for: .normal)
            
            if( RageProducts.store.isProductPurchased(book.key!)){
                self.buyButton.setTitle("Purchased", for: .normal)
            }
        }
    
        //        Timer.scheduledTimer(timeInterval: 4.0, target: self, selector: #selector(PopUpViewController.sayHello), userInfo: nil, repeats: true)
        //
    }
//
//
//    func sayHello()
//    {
//        
//        print ("time")
//        if (purchased)
//        {
//            purchased = false
//            self.removeAnimate()
//            
//        }
//    }
    

    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    }
    

    
    @IBAction func closePopUp(_ sender: Any) {
        self.removeAnimate()
    }
    

    @IBAction func purchaseBook(_ sender: Any) {
        RageProducts.store.buyProduct(products[parentBookNumber])
        EZLoadingActivity.show("Loading...", disableUI: true)
    }
    

}





