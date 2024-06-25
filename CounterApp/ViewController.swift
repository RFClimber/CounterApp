//
//  ViewController.swift
//  CounterApp
//
//  Created by mac on 6/25/24.
//

import UIKit

class ViewController: UIViewController {
    
    private var num: Int = 0
    
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    
    @IBAction func minusAction(_ sender: UIButton) {
        self.num -= 1
        counter.text = "\(self.num)"
    }
    @IBAction func plusAction(_ sender: UIButton) {
        self.num += 1
        counter.text = "\(self.num)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

