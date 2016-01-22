import UIKit

class User {
    var name:String = ""
    var age:Int = 0
    var address:String = ""
    
    init (name:String, age:Int, address:String){
        self.name = name
        self.age = age
        self.address = address
    }
    
    func whoami() -> String {
        return "I am \(name) and I am \(age) years old and live at \(address)"
    }
}

//

var aaron = User(name: "Aaron", age: 24, address: "11 Oak Dr.")
var jay = User(name: "Jay", age: 20, address: "15 Maple Dr.")
var rob = User(name: "Rob", age: 30, address: "7 Cedar St.")
var matt = User(name: "Matt", age: 19, address: "45 Pine St.")
var james = User(name: "James", age: 22, address: "131 Woodbrook Pl.")


// Array

var users:[User] = [User]()
var age: [Int] = [Int]()
users.append(aaron)
users.append(jay)
users.append(rob)
users.append(matt)
users.append(james)


users.sort({ (user1, user2) -> Bool in
    return user1.age > user2.age
})



//func averageAge(users: [User]) -> Int {
//    var x = 0
//    var average:Int = 0
//
//    for i in users {
//        average += users[x].age
//        x++
//    }
//       return (average / 5)
//}


let oldestPerson = users[0].name
let averageAge = (users[0].age + users[1].age + users[2].age + users[3].age + users[4].age) / 5
let youngestPerson = users[3].name


print("Oldest Person: \(oldestPerson)")
print("Average Age: \(averageAge)")
print("Youngest Person: \(youngestPerson)")


