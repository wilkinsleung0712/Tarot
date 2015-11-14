//
//  ViewController.swift
//  Tarot
//
//  Created by WEIQIANG LIANG on 12/11/2015.
//  Copyright © 2015 RMIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Property referencing the label in the view
    @IBOutlet weak var lblAnswers:UILabel!
    //Property referecing the model for managing data and business logic
    var model = Model();

    //Respond to the user clicking a button by providing advice from the oracle
    @IBAction func askTheOracle(sender: UIButton){
        lblAnswers.text = model.response();
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

