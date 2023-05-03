//
//  ViewController.swift
//  Count
//
//  Created by MAC on 2023/04/27.
//  Copyright © 2023 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    
    @IBOutlet weak var mirrorImage: UIImageView!
    @IBOutlet weak var kirakiraImage: UIImageView!
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var plusButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //表示前に背景画像（きらきら）を非表示に
        kirakiraImage.isHidden = true;
        
        plusButton.layer.cornerRadius = 30
        plusButton.layer.borderWidth = 2
        plusButton.layer.borderColor = UIColor.systemBlue.cgColor
        
        label.layer.cornerRadius = 30
        label.layer.masksToBounds = true
    }
    
    @IBAction func plus() {
        
        //100未満なら
        if (number < 100) {
            //+1
            number = number + 1
            //テキストとミラーボールの場所を更新
            label.text = String(number)
            mirrorImage.center.y += 3;
            
            //100になったら背景を表示に
            if (number == 100) {
                kirakiraImage.isHidden = false;
            }

        }
    }
}

