//
//  SearchResultsViewController.swift
//  Simily
//
//  Created by Chris Li on 3/7/15.
//  Copyright (c) 2015 Simily. All rights reserved.
//

import UIKit

class SearchResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet var tableView: UITableView?
    @IBOutlet var collectionView: UICollectionView?

    let nodeTemplate = Node.createDefaultNodes()

    let productDisplay = ["Product1", "Product2"]
    var questionStack: Array<Node> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.

        questionStack.append(nodeTemplate)
        collectionView?.reloadData()
    }

    @IBAction func pickOption(sender: UIButton) {
//        let superview = sender.superview as UICollectionViewCell
//        let ip = collectionView?.indexPathForCell(superview)
//
//        if (ip?.row == questionStack.count - 1) {
//            
//        }

        let choice = sender.tag - 1
        let childNode = questionStack.last?.childNodes[choice] as Node

        questionStack.append(childNode)

        // Animate inserted element
        let newIp = NSIndexPath(forRow: questionStack.count - 1, inSection: 0)
        collectionView?.insertItemsAtIndexPaths([newIp])
        collectionView?.scrollToItemAtIndexPath(newIp, atScrollPosition: UICollectionViewScrollPosition.CenteredHorizontally, animated: true)
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
        let leftBtn = cell.viewWithTag(1) as UIButton
        let rightBtn = cell.viewWithTag(2) as UIButton

        if (question.question == nil) {
            // End
            questionLabel.text = "SUCCESS"
            leftBtn.hidden = true
            rightBtn.hidden = true
        } else {
            questionLabel.text = question.question
            leftBtn.setTitle(question.childNodes[0].selectedOption, forState: UIControlState.Normal)
            rightBtn.setTitle(question.childNodes[1].selectedOption, forState: UIControlState.Normal)
        }

        return cell as UICollectionViewCell
    }
}
