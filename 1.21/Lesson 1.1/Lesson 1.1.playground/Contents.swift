/*:
 ## Lesson 1
 */

import UIKit

var greeting = "Hello, playground"

/*:
 ### Свойства (константы и переменные)
*/



/*:
 > Футбол - это командный вид спорта с мячом, в котором целью является забить мяч в ворота соперника. Футбол это не просто вид спорта, футбол - это стиль жизни, футбол - это философия. Футбол, вид спорта для сильных духом и целеустремленных людей. Я люблю футбол. Футбол мой любимый вид спорта!
 */
var teamSport = "Футбол"


print("\(teamSport) - это командный вид спорта с мячом, в котором целью является забить мяч в ворота соперника. \(teamSport) это не просто вид спорта, \(teamSport) - это стиль жизни, \(teamSport) - это философия. \(teamSport), вид спорта для сильных духом и целеустремленных людей. Я люблю \(teamSport). \(teamSport) мой любимый вид спорта!\n")

teamSport = "Американский футбол"
print(teamSport)

print("\(teamSport) - это командный вид спорта с мячом, в котором целью является забить мяч в ворота соперника. \(teamSport) это не просто вид спорта, \(teamSport) - это стиль жизни, \(teamSport) - это философия. \(teamSport), вид спорта для сильных духом и целеустремленных людей. Я люблю \(teamSport). \(teamSport) мой любимый вид спорта!")
/*:
 ### Базовые типы
*/

//teamSport = 10

/*:
 ### Базовые типы в Swift.
*/
/*:
 ### Строковые типы - String
*/

var userName = ""

print("Hello, \(userName)")
/*:
 ### Числовые типы
 #### Int
*/
var age = 40

print("My name is \(userName), i am \(age) old")
/*:
 #### Double
*/
var someNumber = 10.9999
/*:
 #### Float
*/
var someFloat = 0.0




someFloat = 121.123444
someFloat = 1221.123444
someFloat = 12321.123444
someFloat = 123421.123444
someFloat = 1234521.123444

/*:
 ### Булево значения
*/

let boolean = true

/*:
 ### Приведение типов
*/



// Новая константа с типом Double
let castIntToDouble = Double(age) + someNumber

// Новая константа с типом Int
let castDoubleToInt = age + Int(someNumber)

// Приведение числовых значений к строковым данным
let myAge = "I am "
let castIntToString = myAge + String(age) + " years old"

//Приведение строковых данных к числовым значениям

let someString = "10g"
let castStringToInt = age + (Int(someString) ?? 0)
