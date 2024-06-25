//
//  ViewController.swift
//  CounterApp
//
//  Created by mac on 6/25/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var num: Int = 0
    
    let counter = UILabel()
    let minusButton = UIButton()
    let plusButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
       
    }

    private func configureUI() {
        view.backgroundColor = .black
        
        counter.text = "\(self.num)"
        counter.textColor = .white
        counter.font = UIFont.boldSystemFont(ofSize: 45)
        counter.textAlignment = .center
        
        minusButton.backgroundColor = .red
        minusButton.setTitle("감소", for: .normal)
        minusButton.setTitleColor(UIColor.white, for: .normal)
        minusButton.layer.cornerRadius = 8
        minusButton.addTarget(self, action: #selector(minusbuttonClicked), for: .touchDown)
        
        plusButton.backgroundColor = .blue
        plusButton.setTitle("증가", for: .normal)
        plusButton.setTitleColor(UIColor.white, for: .normal)
        plusButton.layer.cornerRadius = 8
        plusButton.addTarget(self, action: #selector(plusbuttonClicked), for: .touchDown)
        
        [counter, minusButton, plusButton]
            .forEach { view.addSubview($0) }
        
        counter.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.center.equalToSuperview()
        }
        minusButton.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.height.equalTo(30)
            $0.centerY.equalTo(counter)
            $0.right.equalTo(counter.snp.left).inset(-32)
        }
        plusButton.snp.makeConstraints {
            $0.width.equalTo(80)
            $0.height.equalTo(30)
            $0.centerY.equalTo(counter)
            $0.left.equalTo(counter.snp.right).offset(32)
        }
    }
    
    @objc
    private func minusbuttonClicked() {
        self.num -= 1
        counter.text = "\(self.num)"
    }
    @objc
    private func plusbuttonClicked() {
        self.num += 1
        counter.text = "\(self.num)"
    }
}
