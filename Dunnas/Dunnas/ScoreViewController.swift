//
//  ScoreViewController.swift
//  Dunnas
//
//  Created by admin on 25/05/21.
//

import UIKit

class ScoreViewController: UIViewController {
    var workOuts = ["Clean Squat":": 95 Lb","Power Snatch": ": 120 Lb","Dead Lift": ": 65 Lb","Split Jerk": ": 65 Lb"]

    override func viewDidLoad() {
        super.viewDidLoad()
        var y:Int=130
        let scrollView = view.viewWithTag(1) as! UIScrollView
        for workOuts in workOuts {
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 21))
            let label2 = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 21))
            label.center = CGPoint(x: 250, y: y)
            label.numberOfLines=0
            label.backgroundColor = .clear
            label.adjustsFontSizeToFitWidth=true
            label.textAlignment = .left
            label.text = workOuts.key
            
            label2.center = CGPoint(x: 200, y: y)
            label2.numberOfLines=0
            label2.backgroundColor = .clear
            label2.adjustsFontSizeToFitWidth=true
            label2.textAlignment = .center
            label2.text = workOuts.value
            
            scrollView.addSubview(label)
            scrollView.addSubview(label2)
            y=y+20
        }
        
        
    }
    

}
