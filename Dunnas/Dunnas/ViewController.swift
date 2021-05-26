//
//  ViewController.swift
//  Dunnas
//
//  Created by admin on 24/05/21.
//

import UIKit

class ViewController: UIViewController {
    var workOuts = ["Workout1":"5 reps Back Squat 95 Lb","Workout2": "12 Bar Pull Ups","Workout3": "5 Snatch 65 Lb","Workout4": "12 Over Head Squat 45 Lb 65 Lb"]
    var warmUp = ["warmUp1":"500 mt Run","warmUp2": "5 reps 50 mt run","warmUp3": "15 reps dead lift 45 Lb","warmUp4": "10 reps Power Clean 45 Lb"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var y:Int=130
        var y1:Int=300
        let scrollView = view.viewWithTag(1) as! UIScrollView
        for workOuts in workOuts {
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 21))
            label.center = CGPoint(x: 200, y: y)
            label.numberOfLines=0
            label.backgroundColor = .lightGray
            label.adjustsFontSizeToFitWidth=true
            label.textAlignment = .center
            label.text = workOuts.value
            scrollView.addSubview(label)
            y=y+20
        }
        
        for warmUp in warmUp {
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 21))
            label.center = CGPoint(x: 200, y: y1)
            label.numberOfLines=0
            label.backgroundColor = .lightGray
            label.adjustsFontSizeToFitWidth=true
            label.textAlignment = .center
            label.text = warmUp.value
            scrollView.addSubview(label)
            y1=y1+20
        }
        // Do any additional setup after loading the view.
    }
    
}

