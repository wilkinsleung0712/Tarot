//
//  MajorArcanaCard.swift
//  Tarot
//
//  Created by WEIQIANG LIANG on 15/11/2015.
//  Copyright © 2015 RMIT. All rights reserved.
//

import Foundation
enum MajorArcanaCard:Int{
    //Name
    //ImageName
    //Interpretation(Message)
    //Number
    //Hebrew Letter

    case Fool=1,Magician,HighPriestess,Empress,Emperor,Heirophant,Lovers,
    Chariot,Justice,Hermit,WheelOfFortune,Strength, HangedMan,Death,
    Temperance,Devil,Tower,Star,Moon,Sun,Judgement,World;


    static func createDeck()->[String:MajorArcanaCard] {
        //Create a dictionary object to return to the caller
        var majorArcanaCard:[String:MajorArcanaCard]=[:];

        //Iterate through all the element of the enum and add each card
        for card in getDeck() {
            majorArcanaCard.updateValue(card, forKey: card.name);
        }
        return majorArcanaCard;
    }

    //static to load
    //This is a convienience method that enables me to return a dictionary of cards
    //In return statement, each element is a type of enum
    static func getDeck()->[MajorArcanaCard] {
        return [Fool,Magician,HighPriestess,Empress,Emperor,Heirophant,Lovers,
            Chariot,Justice,Hermit,WheelOfFortune,Strength, HangedMan,Death,
            Temperance,Devil,Tower,Star,Moon,Sun,Judgement,World];
    }


    //Number
    var rank:Int{
        get{
            return self.rawValue;
        }
    }

    //Name
    var name:String{
        get{
            switch self{
            case .Fool:return "Fool"

            case .Magician:return "Magician"

            case .HighPriestess:return "HighPriestess"

            case .Empress:return "Empress"

            case .Emperor:return "Emperor"

            case .Heirophant:return "Heirophant"

            case .Lovers:return "Lovers"

            case .Chariot:return "Chariot"

            case .Justice:return "Justice"

            case .Hermit:return "Hermit"

            case .WheelOfFortune:return "WheelofFortune"

            case .Strength:return "Strength"

            case .HangedMan:return "HangedMan"
                
            case .Death:return "Death"
                
            case .Temperance:return "Temperance"
                
            case .Devil:return "Devil"
                
            case .Tower:return "Tower"
                
            case .Star:return "Star"
                
            case .Moon:return "Moon"
                
            case .Sun:return "Sun"
                
            case .Judgement:return "Judgement"
                
            case .World:return "World"
                
            default:return "Fool"
            }
        }
    }

    //Hebrew Letter
    var hebrewLetter:Character{
        get{
            switch self {
            case .Fool:return "א" case .Magician:return "ב"

            case .HighPriestess:return "ג" case .Empress:return "ד"

            case .Emperor:return "ה" case .Heirophant:return "ו"

            case .Lovers:return "ז" case .Chariot:return "ח" case .Justice:return "ט"

            case .Hermit:return "י" case .WheelOfFortune:return "כ"

            case .Strength:return "ל" case .HangedMan:return "מ"

            case .Death:return "נ" case .Temperance:return "ס"

            case .Devil:return "ע" case .Tower:return "פ" case .Star:return "צ"
                
            case .Moon:return "ק" case .Sun:return "ר" case .Judgement:return "ש"
                
            case .World:return "ת" default:return "א"
            }
        }
    }

    //ImageName
    var imageName:String{
        get{
            return self.name.stringByReplacingOccurrencesOfString(" ", withString: "") + ".jpg";
        }
    }

    //Interpretation(Message)
    var interpretation:String {
        get{
            switch self {
            case .Fool: return "Go forth with faith."

            case .Magician: return "Magic is on your side."

            case .HighPriestess: return "A powerful women will be part of the solution."
            case .Empress: return "Plant the seed and it will grow."

            case .Emperor: return "You will need to be well organised."

            case .Heirophant: return "A powerful man will be part of the solution."

            case .Lovers: return "You cannot do this alone."

            case .Chariot: return "You need to find the right vehicle to achieve the outcome."

            case .Justice: return "If you have been fair in your dealings with others, you have nothing to be concerned about. If you have not been fair in your dealings with other, make restitution before proceeding."

            case .Hermit: return "This is not the time to take action, but more study and reflection is required."

            case .WheelOfFortune: return "The outcome has already been decided."

            case .Strength: return "You have the skills and abilities required to pull this off."

            case .HangedMan: return "Try looking at the situation from another perspective."

            case .Death: return "You must finish something first, before you can move forward."

            case .Temperance: return "A balanced approach is needed for a successful outcome."

            case .Devil: return "The devil is in the details, make sure you have made every effort for success."

            case .Tower: return "Something unexpected will happen that will resolve the situation."
                
            case .Star: return "Look to the stars, you will find your answer."
                
            case .Moon: return "The answer is not known at this time, please ask again later."
                
            case .Sun: return "Relax, it is done."
                
            case .Judgement: return "Be discerning and consult others before making a decision."
                
            case .World: return "The result you are looking for has already happened."
            default: return "Go forth with faith."
            }
        }
    }

    //This is a convienience method that builds a description of a card based on its properties
    func getCardDescription()->String{
        //Removing the full at the end of the Interpretion for formatting reasons.
        let stringLength = self.interpretation.characters.count;
        let substringIndex = stringLength - 1;

        let interpretationMinusFullStop = self.interpretation.substringToIndex(self.interpretation.startIndex.advancedBy(substringIndex));

        // Build the string description of the card
        var description = "This card is entitled \'" + self.name;
        description +=  "\'. It is represented by the number \'" + String(self.rank)
        description += "\' and the Hebrew Letter \'" + "\(self.hebrewLetter)"
        description += "\'. It's general meaning is \'" + interpretationMinusFullStop
        return description;


    }
}
