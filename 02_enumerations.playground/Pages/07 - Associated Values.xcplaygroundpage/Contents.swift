//: [⇐ Previous: 06 - Challenge - Switch Statements](@previous)
//: ## Episode 07: Enumerations with Associated Values
enum TwoDimensionalPoint {
    case origin
    case onXAxis(Double)
    case onYAxis(Double)
    case noZeroCoordinate(x: Double, y: Double)
}

let coordinates = (1.0, 3.0)
let twoDimensionalPoint: TwoDimensionalPoint

switch coordinates {
case (0, 0):
    twoDimensionalPoint = .origin
case (_, 0):
    twoDimensionalPoint = .onXAxis(coordinates.0)
case (0, _):
    twoDimensionalPoint = .onYAxis(coordinates.1)
default:
    twoDimensionalPoint = .noZeroCoordinate(x: coordinates.0, y: coordinates.1)
}

func getValues(for point: TwoDimensionalPoint) -> (x: Double, y: Double) {
    switch point {
    case .origin:
        return (0, 0)
    case let .onXAxis(x):
        return (x, 0)
    case let .onYAxis(y):
        return (0, y)
    case let .noZeroCoordinate(x: x, y: y):
        return (x, y)
    }
}

getValues(for: .origin)
getValues(for: .onXAxis(66.6))
getValues(for: .onYAxis(-3.5))
getValues(for: .noZeroCoordinate(x: 5, y: 7))

//: [⇒ Next: 08 - Conclusion](@next)
