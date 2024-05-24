//
//  ViewController.swift
//  MindfulMate
//
//  Created by Michael Burbank on 3/7/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Looks for single or multiple taps.
             let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
            //tap.cancelsTouchesInView = false

            view.addGestureRecognizer(tap)
        dateLabel.text = DateFormatter.localizedString(from:    Date(), dateStyle: .short, timeStyle: .none)
        
        timeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
            
        func greeting(){
            if (userLoggedIn){
                welcomeName.text = "Welcome," + "\n" + "\(firstName)"
            } else if (!(userLoggedIn)){
                welcomeName.text = "Please log in to continue!"
            } else{
                welcomeName.text = "Unknown Error. Please try again later!"
            }
        }
        
        
        greeting()
        
        }

        //Calls this function when the tap is recognized.
        @objc func dismissKeyboard() {
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
            
            
        
        
    }
    // ----------IBOutlets----------
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var welcomeName: UILabel!
    
    
    // ----------VARIABLES----------
    var timer = Timer()
    var firstName = "Mike"
    var userLoggedIn = true
    
    

//    WELCOME CONTAINER

    @objc func tick() {
        dateLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .none)
        timeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
    }
    
//    func greeting(){
//        welcomeName.text = "Welcome, \n\(firstName)!"
//    }
}

