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
    //Add a property for the UIImageValue in your ViewController and wire it up to the control on your storyboard.
    @IBOutlet weak var imgCard:UIImageView!
    //Property referecing the model for managing data and business logic
    var model = Model();

    //Respond to the user clicking a button by providing advice from the oracle
    @IBAction func askTheOracle(sender: UIButton){
        //var cardImageName:String = "";
        //var message:String = "";
        //These value will be passed by reference and modified by the method.
        //model.response(&cardImageName,&message);//Caller method have a "_" so we can skip the parameter name of message.
        //lblAnswers.text = message;
        //imgCard.image = UIImage(named: cardImageName);

        // //Retrieve a random message from the oracle.
        lblAnswers.text = model.response();
        let description = model.currentCard.getCardDescription();
        // //Change the image in the UIImageView to the currently selected card.
        imgCard.image = UIImage(named: model.currentCard.imageName);
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

