//
//  ViewController.swift
//  Image Picker and Activity View
//
//  Created by masato on 5/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // button instance
//        let button = UIButton()
        view.addSubview(button)

    }


    // ******************************************
    // overRide the "button" Layout

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        // Layout
        // set BackGround Color
        button.backgroundColor = UIColor.blue

        // set Posision
        button.frame = CGRect(x: view.frame.origin.x + 50,
                              y: view.safeAreaInsets.top + 300,
                              width: view.frame.width - 80 * 2,
                              height: 100)
    }


}

