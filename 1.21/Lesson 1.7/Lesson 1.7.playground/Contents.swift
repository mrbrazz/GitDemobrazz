import Foundation

//: # Lesson 7

var someDay = "Monday"

func setupAlarm(for day: String) {
    if day == "Monday" || day == "Tuesday" {
        print("Today is \(day). The alarm is set at 8 am")
    } else {
        print("Today is \(day). Alarm not set")
    }
}

setupAlarm(for: someDay)

someDay = "tuesday"

setupAlarm(for: someDay)

//: ## Перечисления



/*:
    enum EnumerationName {
        case enumeration
    }
 
 */


enum Weekday {
    case monday
    case tuesday
    case wednsday
    case thursday
    case friday
    case saturday
    case sunday
}

var weekday = Weekday.thursday
weekday = .monday


//: ### Использование инструкции Switch
func setypAlfrm(for weekday: Weekday) {
    switch weekday {
    case .monday:
        print("To set the alarm for 8 am")
    case .tuesday:
        print("To set the alarm for 7 am")
    case .wednsday:
        print("To set the alarm for 8:30 am")
    case .thursday:
        print("To set the alarm for 9 am")
    case .friday:
        print("Yay! The last day of the week!")
    default:
        print("Weekend. Alarm not set")
    }
}

//: ### Исходные значения
enum Countries: String {
    case usa = "USA"
    case russia = "Russia"
    case china
}

var country = Countries.usa

print("case value: \(country.rawValue)")

country = .china
print("case name: \(country)")
print("case value: \(country.rawValue)")



enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let earth = Planet.earth

print("Erth is the \(earth.rawValue) planat from the sun")


//: ### Инициализация

if let possiblePlanet = Planet(rawValue: 7) {
    print("The seventh planent is \(possiblePlanet)")
}



//: ### Связанные значения (ассоциированные параметры)

enum Weekdays {
    case workday(message: String, time: Int)
    case weekday(messege: String)
}


var anyDay = Weekdays.workday(message: "Set alarm to", time: 8)


func setAlarm(for weekday: Weekdays) {
    switch weekday {
    case let .workday(message, time):
        print("\(message) \(time)")
    case let .weekday(messege):
        print(messege)
    }
}

setAlarm(for: anyDay)
//: ## Структуры


let playerOne = "Player One"
var player1XPosition = 10
var player1YPosition = 5

let playerTwo = "Player Two"
var player2XPosition = 8
var player2YPosition = 3

func playersPosition(player: String, x: Int, y: Int) {
    print("The position of \(player): X\(x):Y\(y)")
}

playersPosition(player: playerOne, x: player1XPosition, y: player1YPosition)
playersPosition(player: playerTwo, x: player2XPosition, y: player2YPosition)


/*:
    struct StructureName {
        var nameOfVarioable: DataType
        func someFunction {
            some code
        }
    }
 
 */

struct PositionOnMap {
    let player: String
    var x: Int
    var y: Int
    
    func getPlayerPosition() {
        print("\(player) is at \(x) and \(y)")
    }
}

var playerOnePosition = PositionOnMap(player: "One Player", x: 10, y: 5)
var playerTWoPosition = PositionOnMap(player: "Two Player", x: 3, y: 7)

playerOnePosition.player
playerOnePosition.x = 7
playerOnePosition.y

playerOnePosition.getPlayerPosition()




//: ### Сравение классов и структур

class MacBook {
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func printDesription() {
        print("\(name) \(year) \(color)")
    }
}

let macBookPro = MacBook(name: "MacBook Pro", year: 2020, color: "Space Gray")

let macBookAir = macBookPro
macBookAir.name = "MacBook Air"

macBookPro.printDesription()
macBookAir.printDesription()


struct IPhone {
    var name: String
    var color: String
    var capacity: Int
    
    func pringDescription() {
        print("\(name) \(color) \(capacity)Gb")
    }
}

let iPhoneXR = IPhone(name: "iPone XR", color: "Coral", capacity: 128)

var iPhone12 = iPhoneXR

iPhone12.name = "iPhone 12"


iPhone12.pringDescription()
iPhoneXR.pringDescription()


var someNumber = 12
var anyNumber = someNumber

someNumber = 0
anyNumber
//: ### Методы в структурах
struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        width * height
    }
    
    mutating func scale(width: Int, height: Int) {
        self.width *= width
        self.height *= height
    }
}

var myRectangle = Rectangle(width: 10, height: 6)
myRectangle.area


myRectangle.scale(width: 2, height: 3)
myRectangle.area
