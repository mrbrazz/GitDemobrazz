import UIKit

//: # Lesson 6
//: ## Классы

let postTitle = "Classes"
let postBody = "Text of the article"
let postAuthor = "Alexey Efimov"

let postTitle2 = "Properties of classes"
let postBody2 = "Text of the article"
let postAuthor2 = postAuthor

class Post {
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments: Int {
        comments.count
    }
    
    
    private var comments: [String] = []
    
    func addComment(_ comment: String) {
        print(comment)
        comments.append(comment)
    }
    
    func showAllComments() {
        for comment in comments {
            print(comment)
        }
    }
    
}

let firstPost = Post()

firstPost.title = "This is my first post"
firstPost.body = "Hello"
firstPost.author = "Efimov Alexey"
firstPost.addComment("Thank you so much")
firstPost.addComment("New comment")


//let secondPost = firstPost
let secondPost = Post()

secondPost.title = "Second post"
secondPost.body = "A lot of text"
secondPost.author


//print("Author \(firstPost.author) has published new post '\(firstPost.title)' with text '\(firstPost.body)'")
//
//print("Author \(secondPost.author) has published new post '\(secondPost.title)' with text '\(secondPost.body)'")

firstPost
firstPost.numberOfComments

firstPost.showAllComments()
print("The number of comments to the post \(firstPost.title) is \(firstPost.numberOfComments)")
//print("The number of comments to the post \(secondPost.title) is \(secondPost.numberOfComments)")

firstPost === secondPost



//: ### Методы классов


//: ### Инициализация
class Human {
    var name: String
    var age: Int
    
    init(name: String = "", age: Int = 0) {
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("I can walk")
    }
    
    func sleep() {
        print("I need sleep")
    }
    
    func eat() {
        print("I need food")
    }
}

let somePerson = Human(name: "Tim", age: 54)
let human = Human()

somePerson.name
somePerson.age


//: ### Наследовение

class Child: Human {
    
    func nursing() {
        if age <= 5 {
            print("I need care")
        } else {
            print("I can eat independently")
        }
    }
    
    func parenting() {
        if age >= 5 && age <= 13 {
            print("I need an education")
        } else if age < 5 {
            print("Me too early to educate")
        } else {
            print("Me too late to educate")
        }
    }
}

let littleBoy = Child(name: "Ron", age: 4)
littleBoy.eat()
littleBoy.sleep()
littleBoy.nursing()
littleBoy.parenting()


class SckoolChild: Child {
    
    func schooling() {
        if age >= 6 && age <= 17 {
            print("I have to go to school")
        } else {
            print("I'm still too early in school")
        }
    }
}

var someChild = SckoolChild(name: "Sara", age: 5)

someChild.nursing()
someChild.parenting()
someChild.schooling()

someChild.sleep()

//: ### Полиморфизм

class Shape {
    func draw() {
        
    }
}

class Rectangle: Shape {
    
    override func draw() {
        super.draw()
        print("Drow Rectangle")
    }
}

class Triangle: Shape {
    override func draw() {
        print("Drow Triangle")
    }
}

class Circle: Shape {
    override func draw() {
        print("Drow Circle")
    }
}


func drawRectangle(_ rectangle: Rectangle) {
    rectangle.draw()
}

func drawTriangle(_ triangle: Triangle) {
    triangle.draw()
}

func drawCircle(_ circle: Circle) {
    circle.draw()
}

func drawShape(_ shape: Shape) {
    shape.draw()
}


let rectangle = Rectangle()
let triangle = Triangle()
let circle = Circle()

drawShape(rectangle)
drawTriangle(triangle)
drawCircle(circle)


drawRectangle(rectangle)
drawTriangle(triangle)
drawCircle(circle)



