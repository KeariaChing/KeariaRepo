import UIKit

//Assignment 1


//1
class Animal {
    var gender: Gender = Gender.male
    
    enum Gender {
        case male
        case female
        case undefined
    }
    
    func eat() {
        print("I eat everything!")
    }
}


//2
class Tiger: Animal {
    override func eat() {
        print("Tiger eats meat.")
    }
}
class Horse: Animal {
    override func eat() {
        print("Horse eats grass.")
    }
}

class Elephant: Animal{
    override func eat() {
        print("Elephant ears peanut.")
    }
}


//3
class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal){
        self.weeklyHot = weeklyHot
    }
}
let zoo = Zoo.init(weeklyHot: Tiger())


//4
/*
 Structures
 Classes
 Initializer
 Inheritance
 Value Types
 Reference Types
*/


//5
/*
 struct是value type，class是reference type。
 struct會自動帶初始值。
 class可以inheritance(繼承)允許subclass(子類別)。
 */


//6
/*
 instance method ：先需要生成一個特定型別 (class、struct、enum) 的實體，才能使用這個實體裡的方法Ｍ，使用func關鍵字來建立。
type method：屬於特定型別 (class、struct、enum)本身的方法。
*/


//7
/*
 我們使用init這個關鍵字來進行初始化，在建立 Class 和 Struct 的實例時，必須為所有的存儲屬性設定初始值。
*/


//8
/*
 instance method 裡面的self指的是實例化後的物件本身ㄤ；type method 的self指的是物件種類的本身。
*/


//9
/*
 value type數值型別 ── 每個實例保存資料一份獨立的備份。當這類型別被指派給一個變數或常數、或是被傳送到函式時，就會創建一個新的實例。
 reference type參考型別 ── 每個實例共享資料的單一備份。當這類型別被初始化、被指派給一個變數或常數、或者是被傳送到函式時，就會回傳參考到相同的實例，所以在複製後，兩個變數會共同參照同一份資料的實例，因此調整第二個變數的資料時，也會影響原本的變數。
*/
