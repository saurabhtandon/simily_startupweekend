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
    @IBOutlet var searchField: UITextField?
    @IBOutlet var collectionViewHeightConstraint: NSLayoutConstraint?
    @IBOutlet var topSpaceConstraint: NSLayoutConstraint?

    let nodeTemplate = Node.createDefaultNodes()

    let productDisplay = ["Product1", "Product2"]
    var questionStack: Array<Node> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.

        questionStack.append(nodeTemplate)
        collectionView?.reloadData()

        searchField?.addBottomBorderWithColor(UIColor.blackColor(), andWidth: 2.0)
        searchField?.text = "Laptops"
    }

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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

        // If it's the last one
        if (childNode.question == nil) {
            delay(1.0, closure: { () -> () in
                self.collectionViewHeightConstraint?.constant = 0
                self.topSpaceConstraint?.constant = 100
                self.view.setNeedsUpdateConstraints()

                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    self.view.layoutIfNeeded()
                })
            })
        }
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

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let product = productDisplay[indexPath.row]

        self.performSegueWithIdentifier("Modal", sender: self)
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
        let skipBtn = cell.viewWithTag(300) as UIButton

        leftBtn.addBottomBorderWithColor(UIColor.whiteColor(), andWidth: 1.0)
        leftBtn.addTopBorderWithColor(UIColor.whiteColor(), andWidth: 1.0)
        leftBtn.addLeftBorderWithColor(UIColor.whiteColor(), andWidth: 1.0)
        leftBtn.addRightBorderWithColor(UIColor.whiteColor(), andWidth: 1.0)

        rightBtn.addBottomBorderWithColor(UIColor.whiteColor(), andWidth: 1.0)
        rightBtn.addTopBorderWithColor(UIColor.whiteColor(), andWidth: 1.0)
        rightBtn.addLeftBorderWithColor(UIColor.whiteColor(), andWidth: 1.0)
        rightBtn.addRightBorderWithColor(UIColor.whiteColor(), andWidth: 1.0)

        let color = UIColor(red: 4/255.0, green: 199/255.0, blue: 154/255.0, alpha: 1.0)
        leftBtn.setBackgroundImage(Lol.imageWithColor(color), forState: UIControlState.Highlighted)
        rightBtn.setBackgroundImage(Lol.imageWithColor(color), forState: UIControlState.Highlighted)

        if (question.question == nil) {
            // End
            let view = cell as UIView
            view.backgroundColor = color

            questionLabel.text = "These Are Our Picks"

            leftBtn.hidden = true
            rightBtn.hidden = true
            skipBtn.hidden = true
        } else {
            questionLabel.text = question.question
            leftBtn.setTitle(question.childNodes[0].selectedOption, forState: UIControlState.Normal)
            rightBtn.setTitle(question.childNodes[1].selectedOption, forState: UIControlState.Normal)
        }

        return cell as UICollectionViewCell
    }
}
