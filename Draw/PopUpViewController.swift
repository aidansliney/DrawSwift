//
//  PopUpViewController.swift
//  Draw
//
//  Created by Aidan Sliney on 20/11/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit
import StoreKit

class PopUpViewController: UIViewController {
    
    var parentBanner: String!
    var parentBookName: String!
    var parentBookNumber: Int!
    let product: SKProduct? = nil
    var products = [SKProduct]()

    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showAnimate()
        
        //fill array with products
        RageProducts.store.requestProducts{success, products in
            if success {
                self.products = products!
            }
            
            // Set button text as price
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.locale = products?[self.parentBookNumber].priceLocale
            let cost = formatter.string(from: (products?[self.parentBookNumber].price)!)
            self.buyButton.setTitle(cost, for: .normal)
        }

        
        //if parent is bookpage
        if let parentVC = self.parent as? BookDetailController {
            
            //set banner image
            parentBookNumber = parentVC.passedBookNumber
            
            
            //set banner image
            parentBanner = parentVC.passedBanner
            topImage.image = UIImage(named: parentBanner)
            //set book name
            parentBookName = parentVC.passedBook
            bookName.text = parentBookName
            if( RageProducts.store.isProductPurchased("Book02")){
             print("Purchased")
            }
            

        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
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

    @IBAction func closePopup(_ sender: Any) {
        
        self.removeAnimate()
    }
    
    @IBAction func purchaseBook(_ sender: Any) {
        
        RageProducts.store.buyProduct(products[parentBookNumber])

    }
    

    
}


