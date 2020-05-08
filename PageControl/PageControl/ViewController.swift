//
//  ViewController.swift
//  PageControl
//
//  Created by Ngoduc on 5/8/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageController: UIPageControl!
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images: [String] = ["1","2","3","4","5","6"]
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageController.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            imgView.contentMode = .scaleAspectFit
            self.scrollView.addSubview(imgView)
        }
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageController.currentPage = Int(pageNumber)
    }

}

