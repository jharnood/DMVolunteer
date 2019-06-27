//
//  PointsViewController.swift
//  DMVolunteer
//
//  Created by Apple on 6/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class PointsViewController: UIViewController {
      var counter = 0
    
 
    
    @IBOutlet weak var pointsDisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        changeDisplay()
    }
    func pointAdder() {
            
        let x = Int.random(in: 0 ... 2)
        var customMessages = ["You are the change this world needs!", "Be the force that fights against oppression and ignorance!","You are helping to benefit the lives of many!"]
            
            
            
        counter+=1
            
        if counter % 10 == 0 {
            let congratMessage = customMessages[x]
            let alertController = UIAlertController(title : "Surprise!" , message : congratMessage, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Thanks!", style :UIAlertAction.Style.default, handler: nil))
                present(alertController, animated: true, completion : nil)
            }
            
        }
    
    @IBAction func changeDisplay(_ sender: UIButton) {
    
        pointAdder()
        self.pointsDisplay.text = "You have amassed \(counter) points!"
            }
        
    
    
  
        // Do any additional setup after loading the view.
    
    

    
    }

    
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


