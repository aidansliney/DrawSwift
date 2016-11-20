//
//  FourthTableViewController.swift
//  Draw
//
//  Created by Aidan Sliney on 19/11/2016.
//  Copyright © 2016 Aidan Sliney. All rights reserved.
//

import UIKit

import StoreKit

class FourthTableViewController: UITableViewController {

    
    let showDetailSegueIdentifier = "showDetail"
    
    var products = [SKProduct]()
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == showDetailSegueIdentifier {
            guard let indexPath = tableView.indexPathForSelectedRow else {
                return false
            }
            let product = products[(indexPath as NSIndexPath).row]
            return RageProducts.store.isProductPurchased(product.productIdentifier)
        }
        
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Rage"
        
        refreshControl = UIRefreshControl()
        refreshControl?.addTarget(self, action: #selector(FourthTableViewController.reload), for: .valueChanged)
        
        let restoreButton = UIBarButtonItem(title: "Restore",
                                            style: .plain,
                                            target: self,
                                            action: #selector(FourthTableViewController.restoreTapped(_:)))
        navigationItem.rightBarButtonItem = restoreButton
        
        NotificationCenter.default.addObserver(self, selector: #selector(FourthTableViewController.handlePurchaseNotification(_:)),
                                               name: NSNotification.Name(rawValue: IAPHelper.IAPHelperPurchaseNotification),
                                               object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        reload()
    }
    
    func reload() {
        products = []
        
        tableView.reloadData()
        
        RageProducts.store.requestProducts{success, products in
            if success {
                self.products = products!
                
                self.tableView.reloadData()
            }
            self.refreshControl?.endRefreshing()
        }
    }
    
    func restoreTapped(_ sender: AnyObject) {
        RageProducts.store.restorePurchases()
    }
    
    func handlePurchaseNotification(_ notification: Notification) {
        guard let productID = notification.object as? String else { return }
        
        for (index, product) in products.enumerated() {
            guard product.productIdentifier == productID else { continue }
            
            tableView.reloadRows(at: [IndexPath(row: index, section: 0)], with: .fade)
        }
    }
}

// MARK: - UITableViewDataSource

extension FourthTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ProductCell
        
        let product = products[(indexPath as NSIndexPath).row]
        
        cell.product = product
        cell.buyButtonHandler = { product in
            RageProducts.store.buyProduct(product)
        }
        
        return cell
    }
}

