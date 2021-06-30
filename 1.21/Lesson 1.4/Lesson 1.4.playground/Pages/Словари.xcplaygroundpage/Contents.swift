//: [Previous](@previous)

import Foundation

//: ## Словари
//: > Неупорядоченные коллекции, которые хранят в себе пары «ключ-значение». Тип ключа словаря может отличаться от типа значения. При этом сами ключи и значения должны быть одного типа

var someStringDictionaty = Dictionary<String, String>() //Полная форма записи словаря
var morStringDictionary: Dictionary<String, String> = [:]
var anotherSomeDictionary = [Int: String]() // Сокращенная форма записи словаря

var carWashQueue: [String: String] = [:]

// Наполнение словаря данными

carWashQueue = ["E095AB" : "Red Toyota", "X127MT" : "White BMW X6" ]

// Изменение значения для ключа

carWashQueue["E095AB"] = "Red Camry"

// Изменение значения с сохранением старого значения

carWashQueue

carWashQueue["M56PA"] = "Green Chevralet Niva"

// Добавление новой пары ключ-значение

carWashQueue

// Удаление значения по ключу с сохранением значения

carWashQueue.removeValue(forKey: "X127MT")

carWashQueue["M56PA"] = nil

carWashQueue

carWashQueue.count

carWashQueue.removeAll()
//: [Next](@next)

