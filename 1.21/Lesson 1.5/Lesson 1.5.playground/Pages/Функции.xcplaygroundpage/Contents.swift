
import Foundation
//: # Lesson 5

//: ## Функции

/*:
 
    func nameOfFunction() {
        some code
    }
 
 */

//func additingTwoNumbers() {
//    let a = 3
//    let b = 4
//    let c = a + b
//
//    print(c)
//}
//
//let someAction = additingTwoNumbers
//
//someAction()
//additingTwoNumbers()
//: ### Функции с возвращаемыми значениями

/*:
    func nameOfFunction() -> Data Type {
        some code
        return some value
    }
 
 */

func additingTwoNumbers() -> Int {
    let a = 3
    let b = 4
    
    return a + b
}

let result = additingTwoNumbers()

print(result)
//: ### Функции с параметрами

/*:
    func name(argumentOne parameterOne: Data Type, argumentTwo parameterTwo: Data Type) {
        some code
    }
 */

// Функция с параметрами без аргументов

func additingTwoNumbers(a: Int, b: Int) -> Int {
         a + b
}

additingTwoNumbers(a: 3, b: 5)


// Функция с параметрами и аргументами

func additingTwoNumbers(number a: Int, number b: Int) -> Int {
         a + b
}

additingTwoNumbers(number: 3, number: 7)

func additingTwoNumbers(_ a: Int, _ b: Int) -> Int {
         a + b
}

additingTwoNumbers(4, 6)

func additingTwoNumbers(_ a: Int, and b: Int) -> Int {
         a + b
}

additingTwoNumbers(3, and: 8)
//: [Next](@next)
