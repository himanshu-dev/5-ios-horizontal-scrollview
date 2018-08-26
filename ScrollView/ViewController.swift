//
//  ViewController.swift
//  ScrollView
//
//  Created by himanshu sharma on 03/08/18.
//  Copyright © 2018 himanshu sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]();
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let scrollWidth: CGSize = scrollView.frame.size;
        for x in 0...2 {
            let image = UIImage(named: "tutorial\(x + 1)");
            let imageView = UIImageView(image: image);
            images.append(imageView);
            
            let newX: CGFloat = (scrollWidth.width / 2) + (scrollWidth.width * CGFloat(x));
            
            imageView.frame = CGRect(x: newX - 75, y: view.frame.midY - CGFloat(75), width: 150, height: 150);
            
            scrollView.addSubview(imageView);
        }
        scrollView.clipsToBounds = false;
        scrollView.contentSize = CGSize(width: scrollWidth.width * CGFloat(3), height: 1.0);
    }

}

