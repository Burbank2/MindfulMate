import UIKit


//var firstName = "Mike"
//var userLoggedIn = false
//
//func greeting(){
//    if userLoggedIn {
////            welcomeName.text = "Welcome, \("firstName")"
////        welcomeName.text = "Welcome"
//            print("Logged in.")
//    } 
//    else {
////        welcomeName.text = "Welcome! Please log in to continue."
//            print("Please log in.")
//    }
//    
//}
//greeting()


//struct Town{
//    let name: String
//    var citizens: [String]
//    var resources: [String: Int]
//    
//    init(townName: String, people: [String], stats: [String : Int]) {
//        name = townName
//        citizens = people
//        resources = stats
//    }
//    
//    func fortify() {
//        print("Defenses increased!")
//    }
//}
//
//var anotherTown = Town(townName: "Nameless Island", people: ["Tom Hanks"], stats: ["Coconuts": 100])
//
//anotherTown.citizens.append("Wilson")
//print(anotherTown.citizens)

struct Town{
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String : Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Defenses increased!")
    }
}

var anotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts": 100])

anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)


var ghostTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Tumbleweed" : 1])
print(ghostTown)

anotherTown.citizens.append("Wilson")
ghostTown.fortify()
