//
//  ViewController.swift
//  Decimal Change
//
//  Created by 迫 佑樹 on 2015/12/23.
//  Copyright © 2015年 迫 佑樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var result: UILabel!
    
    @IBOutlet var input: UITextField!
    
    @IBOutlet var nuclearPower: UILabel!
    
    @IBAction func submit(sender: AnyObject) {
        //ここにchangeボタンが押された時の処理
        let weight = Int(input.text!)!
        
        let energy = weight * 299792458 * 299792458
        
        let nuclear = energy / (1000000 * 1000 * 3600 * 24 * 365)
        
        result.text = "\(energy) Jです．"
        
        nuclearPower.text = "原発\(nuclear) 台が1年に作るエネルギー"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

