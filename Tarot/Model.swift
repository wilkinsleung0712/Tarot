//
//  Model.swift
//  Tarot
//
//  Created by WEIQIANG LIANG on 13/11/2015.
//  Copyright © 2015 RMIT. All rights reserved.
//

import Foundation

class Model{
    let majorArcanaCards:[String:MajorArcanaCard];
    var currentCard:MajorArcanaCard = MajorArcanaCard.Fool;

    init() {
        //calling to init an dictionary of enum
       majorArcanaCards = MajorArcanaCard.createDeck();
    }

    //Return the Oracle's response(message) to the question posed by the user.
    func response()->String{
//        //Return a random integer within the range of indexes for the answers array.
//        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)));
//        //Convert the values in the dictionary to an Array and retrieve the value at the specified index.
//        let message = Array(majorArcanaCards.values)[response];
//        currentCardImageName = Array(majorArcanaCards.keys)[response] + ".jpg";
//        return message;

        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)));
        //setup the current card
        currentCard = Array(majorArcanaCards.values)[response];
        return currentCard.interpretation;
    }
}