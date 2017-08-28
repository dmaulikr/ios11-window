//
//  ViewController.swift
//  Window Shopper
//
//  Created by Thomas Pickup on 28/08/2017.
//  Copyright © 2017 Thomas Pickup. All rights reserved.
//

import UIKit

class vcMain: UIViewController {
    @IBOutlet weak var txtWage: tfCurrency!
    @IBOutlet weak var txtPrice: tfCurrency!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btnCalc = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        btnCalc.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        btnCalc.setTitle("Calculate", for: .normal)
        btnCalc.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btnCalc.addTarget(self, action: #selector(vcMain.caclulate), for: .touchUpInside)
        
        txtWage.inputAccessoryView = btnCalc
        txtPrice.inputAccessoryView = btnCalc
    }
    
    @objc func caclulate() {
        print("we got here")
    }
}

