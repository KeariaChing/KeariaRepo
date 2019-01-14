import UIKit
//assignment 3 - Colletction

//1
var myFriends :[String] = []

//2
myFriends = myFriends + ["Ian", "Bomi", "Kevin"]

//3
myFriends.append("Michael")

//4
myFriends.insert("Kevin", at: 0)
myFriends.remove(at: 3)

//5
print(myFriends)


//6
/*
輸入 myFriends[5]會出現Error，因為數值5超過範圍，僅有0~3的項目有值。
*/

//7
myFriends[0]

//8
myFriends[3]

//9
var myCountryNumber : [String: Int] = [:]

//10
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
myCountryNumber

//11
myCountryNumber.updateValue(0, forKey: "GB")
myCountryNumber

//12
var emptyDictionary = [String: Int]()

//13
/*使用removeValue(forKey: "String")
 例如想要移除JP*/
myCountryNumber.removeValue(forKey: "JP")
myCountryNumber
