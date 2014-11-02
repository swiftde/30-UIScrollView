//
//  ViewController.swift
//  Scrollview-Tutorial
//
//  Created by Benjamin Herzog on 02.11.14.
//  Copyright (c) 2014 Benjamin Herzog. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = UIColor.blackColor()
        
        scrollView.delegate = self
        
        for i in 1...6 {
            images.append(UIImage(named: "bild-0\(i).jpg")!)
        }
        var i: CGFloat = 0
        for image in images {
            let imageView = UIImageView(frame: CGRectZero)
            imageView.image = image
            imageView.sizeToFit()
            imageView.frame.origin.x += i*750/2
            i++
            scrollView.addSubview(imageView)
        }
        
        scrollView.contentSize = CGSize(width: images.count * 750/2, height: 1334/2)
        scrollView.bounces = false // oder true
        scrollView.pagingEnabled = true
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        scrollView.scrollRectToVisible(CGRect(x: 750, y: 0, width: 0, height: 0), animated: true)
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        println("x: \(scrollView.contentOffset.x) - y: \(scrollView.contentOffset.y)")
    }
    
}


























