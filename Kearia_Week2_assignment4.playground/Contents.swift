import UIKit

//Assignment 4

enum GuessNumberGameError: Error {
    case wrongNumber
}
class ​GuessNumerGame {
    var targetNumber = 10
    func guess(number: Int) throws {
    guard number == targetNumber else {
    throw GuessNumberGameError.wrongNumber
        }
        
    }
}
let game = ​GuessNumerGame()

do {
    try game.guess(number: 20)
}catch GuessNumberGameError.wrongNumber{
    print("wrong number)")
}

