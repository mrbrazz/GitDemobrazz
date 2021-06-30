import UIKit

//: # Home Work 5
/*:
 ## Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Салават Юлаев - N/A
 
 - Игра с Авангард - 2:1
  
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */

let resultsOfGames = [
    "Авангард": ["2:1","2:3"],
    "Салават Юлаев": ["3:6","5:5"],
    "Акбарс": ["3:3","1:2"]
]

for (teamName, results) in resultsOfGames {
    for result in results {
        print("Игра с \(teamName) - \(result)")
    }
}

/*:
 ## Задание 2
 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. Вызовите функцию и передайте в неё кошелек с деньгами. В кошельке могут храниться купюры различного достоинства от 50 до 5000 рублей.
 */

func calculationCash(inWallet wallet: [Int]) -> Int {
    var totalCash = 0
    for banknote in wallet {
        totalCash += banknote
    }
    return totalCash
}

func calculationCashV2(inWallet wallet: Int...) -> Int {
    var totalCash = 0
    for banknote in wallet {
        totalCash += banknote
    }
    return totalCash
}

let wallet = [50, 100, 100, 500, 50, 1000, 5000, 50, 100]

calculationCash(inWallet: wallet)
calculationCashV2(inWallet: 50, 100, 200, 200)

/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */

func isEvenNumber(_ number: Int) -> Bool {
    number < 5
}

isEvenNumber(17)

/*:
3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
*/

func isDivisibleByThree(_ number: Int) -> Bool {
    number % 3 == 0
}

/*:
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложить задание, то можете возвращать несортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответсвовать количеству элементов заданного интервала.
 */

func createArray(from x: Int, to y: Int) -> [Int] {
    var array: [Int] = []
    for number in x...y {
        array.append(number)
    }
    return array
}

// Создание несортированного массива
func createUnsortedArray(from x: Int, to y: Int) -> [Int] {
    var numbers: Set<Int> = []
    for number in x...y {
        numbers.insert(number)
    }
    return Array(numbers)
}

createUnsortedArray(from: 8, to:3)

func chek(number: Int) -> Bool {
    number % 2 == 0
}
/*:
3.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */

var numbers = createArray(from: 1, to: 100)

/*:
 3.5 Создайте функцию для фильтрации переданного в неё массива и отфильтруйте при помощи неё массив из задания **3.4**. Функция должна возвращать новый массив без четных чисел или без чисел, кратных трем. Для определения фильтруемых значений используейте ранее созданные функции из заданий **3.1** и **3.2**.
 */

func deleteMiltiple(numbers: [Int], clouser: (Int) -> Bool) -> [Int] {
    var newNumbers: [Int] = []
    for number in numbers {
        if !clouser(number) {
            newNumbers.append(number)
        }
    }
    return newNumbers
}

deleteMiltiple(numbers: numbers, clouser: isEvenNumber)

deleteMiltiple(numbers: numbers) { number in
    number % 2 == 0
}

deleteMiltiple(numbers: numbers) { $0 % 3 == 0 }


// Различные примеры удалания элементов из массива:
// Удаление значения по индексу
for number in numbers {
    if isDivisibleByThree(number) {
        if let index = numbers.firstIndex(of: number) {
            numbers.remove(at: index)
        }
    }
}

numbers

// Фильтруем, оставляя в массиве все нечетные значения
numbers = numbers.filter { !isEvenNumber($0) }

numbers

numbers = createArray(from: 1, to: 100)

// Удаление всех элементов, удовлетворяющих условию
numbers.removeAll(where: isEvenNumber)
numbers.removeAll(where: isDivisibleByThree)
