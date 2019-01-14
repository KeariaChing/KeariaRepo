import UIKit

//assignment 3 - Control Flow

//1
let lottoNumers = [10, 9, 8, 7, 6, 5]
for index in lottoNumers.count - 3 ..< lottoNumers.count {
    print(lottoNumers[index])
}

//2
var value = 4
for _ in 0...5 {
    value += 1
    print(value)
}
for _ in 0...2 {
    print(value)
    value -= 2
}

//3
var value1 = 4
var index1 = 0
while index1 <= 5 {
    value1 += 1
    index1 += 1
    print(value1)
}

while index1 >= 2 {
    print(value1)
    value1 -= 2
    index1 -= 2
}

//4
var value2 = 4
var index2 = 0

repeat {
    value2 += 1
    index2 += 1
    print(value2)
} while index2 <= 5

repeat {
    print(value2)
    value2 -= 2
    index2 -= 2
} while index2 >= 2

//5
var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//6
var jobLevel = ["0", "1", "2", "3", "4"]
switch jobLevel[3] {
case "1": print("Member")
case "2": print("Team Leader")
case "3": print("Manager")
case "4": print("Director")
    
default: print("We don't have this job.")
    
}
