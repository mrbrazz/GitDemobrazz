//: [Previous](@previous)

import Foundation


//: ## Множества
//: > Хранят в себе неупорядоченные, но при этом уникальные значения одного типа

// Создание пустого множества

let characters: Set<Character> = []
let integers = Set<Int>()

// Создание множества с типом стринг

var strings: Set = ["a", "a", "b", "c"]

// Добавление нового элемента в множество

strings.insert("d")
strings.insert("a")

// Проверка на наличие определенного элемента во множестве

strings.contains("c")

// Сортировка с использованием метода sorted() для последующей итерации по множеству

strings

strings.sorted()

let array = strings.sorted(by: >)

array
//: [Next](@next)
