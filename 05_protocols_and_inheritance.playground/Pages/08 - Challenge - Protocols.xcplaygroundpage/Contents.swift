//: [⇐ Previous: 07 - Protocols & Extensions](@previous)
//: ## Episode 08: Challenge - Protocols

/*:
 ## Challenge 1
 - Create a protocol `Shape` that defines a read-only property `area` of type `Double`.
 - Implement `Shape` with structs representing `Square`, `Triangle` and `Circle`.
 - Add a circle, a square and a triangle to an array. Convert the array of `Shape`s to an array of `area`s using map.

 **HINTS**
 - The area of a square = one of its sides squared
 - The area of a triangle = 0.5 multiplied by its base multiplied by its height
 - The area of a circle = pi multiplied by its radius squared
 - `pi` is a property of `Double`!
 - You can copy the extension on `Numeric` into this page and use the `squared` property!
 */

// TODO: Write solution here

extension Numeric {
    var squared: Self {
        self * self
    }
}

protocol Shape {
    var area: Double { get }
}

struct Square: Shape {
    var sideLenght: Double

    var area: Double {
        sideLenght.squared
    }
}

struct Triangle: Shape {
    var baseLength: Double
    var height: Double

    var area: Double {
        0.5 * baseLength * height
    }
}

struct Circle: Shape {
    var radius: Double

    var area: Double {
        Double.pi * radius.squared
    }
}

let shapesArray: [Shape] = [Square(sideLenght: 5), Triangle(baseLength: 5, height: 5), Circle(radius: 5)]
let areasArray = shapesArray.map { $0.area }

/*:
 ## Challenge 2 Extending a Protocol
 Below is a function that takes a Double and tells you if it is an integer by comparing the Double to a rounded version of itself.
 - Turn that function into a computed property of `FloatingPoint` (a protocol that Double and other floating point numbers conform to!)
 - Try the property out on instances of `Double` and `Float`!
 */

// -----------------------------------
func isInteger(number: Double) -> Bool {
    number.rounded() == number
}

// -----------------------------------

// TODO: Write solution here

extension FloatingPoint {
    var isInteger: Bool {
        rounded() == self
    }
}

Double(5.4).isInteger
Float(2.0).isInteger
