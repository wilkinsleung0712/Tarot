//
//  Model.swift
//  Tarot
//
//  Created by WEIQIANG LIANG on 13/11/2015.
//  Copyright © 2015 RMIT. All rights reserved.
//

import Foundation

class Model{
    var answer = ["Go forth with faith","Magic is on your side", "Plant the seed and it will grow"];

    init(){
        // add an element to the end of the array
        answer.append("Look to the stars to find your answer");
        //insert an element at a specified index of the array
        //all other element are moved forward one position
        answer.insert("You cannot do this alone", atIndex: 3);
        //Remove an element at a specified index of the array
        //all other element are moved backward one position
        answer.removeAtIndex(4);
        //Remove the last element
        answer.removeLast();

    }

    func response()->String{
        let response = Int(arc4random_uniform(UInt32(answer.count)));
        return answer[response];
    }
}