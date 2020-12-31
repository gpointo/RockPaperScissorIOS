//
//  InterfaceController.swift
//  RockPaperScissorsSuper WatchKit Extension
//
//  Created by user189146 on 12/28/20.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {


    @IBAction func choseRock() {
        computeData(playerObject:"✊")
    }
    
    @IBAction func chosePaper() {
        computeData(playerObject:"🖐")
        
    }
    
    @IBAction func choseScissors() {
        computeData(playerObject:"✌️")
    }
    
    func computeData(playerObject: String) {
        let CPUchoice = arc4random_uniform(3)
        var CPUobject = ""
        
        if CPUchoice == 0 {
            CPUobject = "✊"
        } else  if CPUchoice == 0 {
            CPUobject = "🖐"
        } else {
            CPUobject = "✌️"
            
        }
        var result = ""
        if CPUobject == playerObject {
            result = "Tie!"
        }
        if (CPUobject == "✊" && playerObject == "✌️") ||
            (CPUobject == "🖐" && playerObject == "✊") ||
            (CPUobject == "✌️" && playerObject == "🖐")            {
            result = "Apple Watch Wins"
        }
        if (CPUobject == "✊" && playerObject == "🖐") ||
            (CPUobject == "✌️" && playerObject == "✊") ||
            (CPUobject == "🖐" && playerObject == "✌️")            {
            result = "You Win"
        }
        sendData(playerChoice: playerObject, CPUchoice: CPUobject, result: result)
    }
    func sendData(playerChoice: String, CPUchoice: String, result: String) {
        let data = ["playerChoice" : playerChoice,
                    "CPUchoice": CPUchoice, "result": result]
        pushController(withName: "Result", context: data)
        
        
    }
}
