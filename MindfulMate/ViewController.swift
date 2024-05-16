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
        dateLabel.text = DateFormatter.localizedString(from:    Date(), dateStyle: .short, timeStyle: .none)
        
        timeLabel.text = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .short)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(self.tick) , userInfo: nil, repeats: true)
        
        greeting()
        
        
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
    
    func greeting(){
        welcomeName.text = "Welcome, \n\(firstName)!"
    }
}







//   func greeting() {
//        if (userLoggedIn == true){
//           welcomeName.text = "Welcome, \(firstName)"
//
////            print("Logged in.")
//        }   else if (userLoggedIn == false) { welcomeName.text = "Welcome! Please log in to continue."
////            print("Please log in.")
//        } else{
//            print("Error")
//        }
//
//    }
    
//    func greeting(){
//        if (userLoggedIn){
//            welcomeName.text = "Welcome, \(firstName)"
//        } else if (!(userLoggedIn)){
//            welcomeName.text = "Please log in to continue!"
//        }
//    }

//func greeting(){
//            func greeting() {
//                    if (userLoggedIn == true){
//                       welcomeName.text = "Welcome, \(firstName)"
//
//            //            print("Logged in.")
//                    }   else if (userLoggedIn == false) { welcomeName.text = "Welcome! Please log in to continue."
//            //            print("Please log in.")
//                    } else{
//                        print("Error")
//                    }
//
//                }
//        }
//        greeting()

//     userLoggedIn ? welcomeName.text = "Welcome, \(firstName)" : welcomeName.text = "Welcome! Please sign in."

