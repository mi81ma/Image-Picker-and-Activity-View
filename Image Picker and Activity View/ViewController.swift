//
//  ViewController.swift
//  Image Picker and Activity View
//
//  Created by masato on 5/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

// (1) buttonの宣言がviewDidLayoutSubviews()に書く場合は必要
var button01: UIButton!

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        // ****************************************************
        // (2) button01をUIButton()のインスタンスにする
        button01 = UIButton()
        view.addSubview(button01)

        button01.addTarget(self, action: #selector(ViewController.upComeImages), for: UIControl.Event.touchUpInside)
    }


    // カスタム View クラスの layoutSubviewsメソッドは、親Viewのframeが変更されたときなど、layout を変更すべきときに呼ばれるメソッドです。
    // layoutSubviewsで作成すると、親viewより上のLayerに表示されます
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()


        // ****************************************************
        // (3) button01のレイアウトをつくる
        // 画面が回転したときに再読み込みされる。

        // BackGround Color
        button01.backgroundColor = UIColor.blue

        // Title Text
        button01.setTitle("Button", for: .normal)

        // Text Highlighted When touch
        button01.setTitleColor(UIColor.black, for: .highlighted)

        // Rounded the edges of the button
        button01.layer.cornerRadius = 20.0

        button01.frame = CGRect(
            x: view.frame.origin.x + 50,
            y: view.safeAreaInsets.top + 300,  // Subviewsでは、view.safeAreaInsetsの値が反映されます
            width: view.frame.width - 50 * 2,
            height: 100
        )
        // ****************************************************
    }

    // Method: Up Comming Camera Roll when Push the Button
    @objc func upComeImages(sender: UIButton) {
        let upComeImagePicker = UIImagePickerController()

        present(upComeImagePicker, animated: true, completion: nil)
    }

}
