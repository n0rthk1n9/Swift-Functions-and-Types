//: [⇐ Previous: 01 - Introduction](@previous)
//: ## Episode 02: Inheritance

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Person {
    var grades: [Grade] = []
}

let jon = Person(firstName: "Jon", lastName: "Snon")
let jane = Student(firstName: "Jane", lastName: "Snane")
jon.firstName
jane.firstName

let historyGrade = Grade(letter: "B", points: 9, credits: 3)
jane.grades.append(historyGrade)

//: [⇒ Next: 03 - Challenge - Inheritance](@next)
