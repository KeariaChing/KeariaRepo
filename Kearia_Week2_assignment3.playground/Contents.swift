import UIKit

//Assignment 3

//1

protocol PoliceMan {
    func arrestCriminals()
}

struct Person: PoliceMan  {
    var name: String
    var toolMan: ToolMan
    func arrestCriminals() {
    }
}

protocol ToolMan {
    func fixComputer()
}

struct Engineer: ToolMan {
    func fixComputer() {
        
    }
}
let engineer = Engineer()
let aPerson = Person(name: "Steven", toolMan: engineer)

