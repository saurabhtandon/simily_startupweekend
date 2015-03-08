//
//  SearchResultsViewController.swift
//  Simily
//
//  Created by Chris Li on 3/7/15.
//  Copyright (c) 2015 Simily. All rights reserved.
//

import UIKit

class SearchResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate {

    let productDisplay = ["Product1", "Product2"]
    let questionStack = ["Q1", "Q2"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }

    // MARK: tableView
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:AnyObject = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        let product: AnyObject = productDisplay[indexPath.row]

        let nameLabel = cell.viewWithTag(100) as UILabel

        nameLabel.text = product as? String

        return cell as UITableViewCell
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productDisplay.count
    }

    // MARK: Collection View
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.questionStack.count;
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:AnyObject = collectionView.dequeueReusableCellWithReuseIdentifier("QuestionCell", forIndexPath: indexPath)
        let question = questionStack[indexPath.row]

        let questionLabel = cell.viewWithTag(100) as UILabel
        questionLabel.text = question as String

        return cell as UICollectionViewCell
    }


}
