//: [⇐ Previous: 06 - forEach & map](@previous)
//: ## Episode 07: compactMap & flatMap

//: `compactMap`

// --------------------------------------
let userInput = ["meow!", "15", "37.5", "seven"]
// --------------------------------------

var arrayForValidInput: [Int] = []
for input in userInput {
    guard let input = Int(input) else {
        continue
    }
    arrayForValidInput.append(input)
}

print(arrayForValidInput)

let validInput = userInput.compactMap { input in
    Int(input)
}

print(validInput)

//: `flatMap`

// --------------------------------------
let arrayOfDwarfArrays = [
    ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
    ["Thorin", "Nori", "Bombur"]
]
// --------------------------------------

let dwarvesAfterM = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
    var afterM: [String] = []
    for dwarf in dwarves where dwarf > "M" {
        afterM.append(dwarf)
    }
    return afterM
}

print(dwarvesAfterM)

//: [⇒ Next: 08 - Challenge: Closures & Collections](@next)
