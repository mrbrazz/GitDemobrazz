import Foundation


//: # Lesson 8

//: # Дополнительные коцепции Swift

//: ## Кортежи

/*:
 
    (valueOne, ValueTwo, ValueThree,…)

*/





class Weather {
    var currentWeather: (Int, String)
    
    init(currentWeather: (Int, String)) {
        self.currentWeather = currentWeather
    }
}

let weather = Weather(currentWeather: (22, "Sunny"))


//: ### Получение доступа к элементам

weather.currentWeather

weather.currentWeather.0 = 24
weather.currentWeather.1 = "Rainy"

let (_, atmos) = weather.currentWeather

//temperature
atmos


//: ### Именование элементов кортежа

var currentWeather = (temp: 22, atmos: "Sunny", windSpeed: 6)

currentWeather.0 = 4
currentWeather.atmos
currentWeather.windSpeed


//: ### Массовое присвоение значений

let numberOne = 1
let numberTwo = 2
let numberThree = 3

let (x, y, z) = (1, 2, 3)


var cityTemp = ["Moscow": Int.random(in: 15...30),
                "Ufa": Int.random(in: 15...30),
                "Saratov": Int.random(in: 15...30) ]

for (city, temp) in cityTemp {
    print("Температура в городе \(city) составляет \(temp) градусов")
}


func getTemp(in city: String) -> (city: String, temp: Int) {
    let temp = Int.random(in: 15...30)
    return (city, temp)
}

let (city, temper) = getTemp(in: "Ufa")
print("Температура в городе \(city) составляет \(temper) градусов")

let tempInCity = getTemp(in: "Ufa")
print("Температура в городе \(tempInCity.city) составляет \(tempInCity.temp) градусов")


let cityList = cityTemp.sorted(by: <)

for cityT in cityList {
    print("\(cityT.key) - \(cityT.value)")
}
//: ## Guard

var name = ""
var surneme = ""
var email = ""
var age = 0

func createNewUserV1(name: String, surname: String, email: String, age: Int) {
    if name != "" {
        print(name)
    } else {
        print("Enter your name")
    }
    
    if surname != "" {
        print(surname)
    } else {
        print("Enter your sername")
    }
    
    if email != "" {
        print(email)
    } else {
        print("Enter your email")
    }
    
    if age >= 18 {
        print(age)
    } else {
        print("Entry for adult only")
    }
    
    print("\(name) \(surname), Welcom!")
    
}

//createNewUserV1(name: name, sername: surneme, email: email, age: age)

func createNewUserV2(name: String, surname: String, email: String, age: Int) {
    if name != "" {
        print(name)
        if surname != "" {
            print(surname)
            if email != "" {
                print(email)
                if age >= 18 {
                    print("\(name) \(surname), Welcom!")
                } else {
                    print("Entry for adult only")
                }
            } else {
                print("Enter your email")
            }
            
        } else {
            print("Enter your sername")
        }
    } else {
        print("Enter your name")
    }
       
}

name = "Eugeniya"
surneme = "Bruyko"
email = "y@index.ru"
age = 18

//createNewUserV2(name: name, surname: surneme, email: email, age: age)


func createNewUserV3(name: String, surname: String, email: String, age: Int) {
    if name == "" {
        print("Enter your name")
        return
    }
    print(name)

    
    if surname == "" {
        print("Enter your surname")
        return
    }
    print(surname)

    
    if email == "" {
        print("Enter your email")
        return
    }
    print(email)
 
    
    if age < 18 {
        print("Entry for adult only")
        return
    }
    print("\(name) \(surname), Welcom!")
    
}

//createNewUserV3(name: name, surname: surneme, email: email, age: age)


func createNewUserV4(name: String?, surname: String?, email: String?, age: Int?) {
    if let name = name  {
        print(name)
        return
    }
    
    if surname == nil  || surname?.count == 0 {
        print("Enter your surname")
        return
    }
    
    if email == nil  || email?.count == 0 {
        print("Enter your email")
        return
    }
    
    if age == nil  || age! < 18 {
        print("Enter your email")
        return
    }
    
    print("\(name!) \(surname!), Welcom!")
}
//: ### Синтаксис

/*:

    guard condition else { return }

 */
func createNewUserV5(name: String?, surname: String?, email: String?, age: Int?) {
    guard let name = name, name.count > 0 else { return }
    
    guard let surname = surname, surname.count > 0
    else { return }
    
    guard let email = email, email.count > 0 else { return }
    guard let age = age, age >= 18 else { return }
    
    print("\(name) \(surname), Welcom!")
}

createNewUserV5(name: name, surname: surneme, email: email, age: age)


class Person {
    var id: String?
    var residence: Residence?
}

class Residence {
    var adress: Adress?
}

class Adress {
    var buildingNumber: String?
    var streetNumber: String?
    var apartmentNumber: String?
}

var person: Person?

if let residence = person?.residence {
    if let adress = residence.adress {
        if let apartmentNumber = adress.apartmentNumber {
            print("The apartment number: \(apartmentNumber)")
        }
    }
}

if let apartmentNumber = person?.residence?.adress?.apartmentNumber {
    print("The apartment number: \(apartmentNumber)")
}

var num = "only"
num.count
