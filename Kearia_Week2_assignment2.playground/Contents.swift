
//Assignment 2

//1
enum Gasoline: String{
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case disel
    
    func getPrice() -> String{
        switch self {
        case .oil92: return "26.4"
        case .oil95: return "27.9"
        case .oil98: return "29.9"
        case .disel: return "24.2"
        
}

    }
}


/*
 把值夾帶在enum變數中，爾後可以將關聯值定義到let或var中進行讀取。
 */

//2
class Pet {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class People {
    
    var pet: Pet?
    
    func aPeoplePet() -> Pet? {
        guard let myPet = pet else {
            return nil
        }
        return myPet
    }
    
    func anotherPeoplePet() -> Pet? {
        if let myPet = pet {
            return myPet
        }
        return nil
    }
}
