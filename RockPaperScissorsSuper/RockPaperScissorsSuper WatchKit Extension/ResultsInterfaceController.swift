//
//  ResultsInterfaceController.swift
//  RockPaperScissorsSuper WatchKit Extension
//
//  Created by user189146 on 12/29/20.
//

import WatchKit
import Foundation


class ResultsInterfaceController: WKInterfaceController {
    @IBOutlet var playerChoiceLable: WKInterfaceLabel!
    @IBOutlet var CPUchoiceLable: WKInterfaceLabel!
    @IBOutlet var ResultLable: WKInterfaceLabel!
    
    @IBOutlet var bgGroup: WKInterfaceGroup!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        guard let data = context as? Dictionary<String,String> else { return }
        playerChoiceLable.setText(data["playerChoice"])
        CPUchoiceLable.setText(data["CPUchoice"])
        ResultLable.setText(data["result"])
        
        if data["result"] == "You Win" {
            bgGroup.setBackgroundImage(UIImage(named:"win"))
        } else if data["result"] == "Apple Watch Wins" {
            bgGroup.setBackgroundImage(UIImage(named:"lose"))
        } else {
            bgGroup.setBackgroundImage(UIImage(named:"tie"))
            
        }
    }
    
}
