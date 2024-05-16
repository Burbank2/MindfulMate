import UIKit


var firstName = "Mike"
var userLoggedIn = false

func greeting(){
    if userLoggedIn {
//            welcomeName.text = "Welcome, \("firstName")"
//        welcomeName.text = "Welcome"
            print("Logged in.")
    } 
    else {
//        welcomeName.text = "Welcome! Please log in to continue."
            print("Please log in.")
    }
    
}
greeting()
