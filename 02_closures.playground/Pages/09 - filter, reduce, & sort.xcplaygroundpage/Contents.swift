//: [⇐ Previous: 07 - Challenge - forEach and map](@previous)
//: ## Episode 08: filter, reduce, and sort

// --------------------------------------
let arrayOfDwarfArrays = [
    ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
    ["Thorin", "Nori", "Bombur"]
]
// --------------------------------------

//: filter

// --------------------------------------
var dwarfesAfterM = arrayOfDwarfArrays.flatMap { dwarfes -> [String] in
    var afterM: [String] = []
    for dwarf in dwarfes where dwarf > "M" {
        afterM.append(dwarf)
    }
    return afterM
}

// --------------------------------------

dwarfesAfterM = arrayOfDwarfArrays.flatMap { dwarfes -> [String] in
    dwarfes.filter { dwarf in
        dwarf > "M"
    }
}

dwarfesAfterM = arrayOfDwarfArrays.flatMap { dwarfes -> [String] in
    dwarfes.filter { $0 > "M" }
}

//: reduce

// --------------------------------------
let ozmaGrades = [60, 96, 87, 42]

func getPassStatus(for grades: [Int], lowestPass: Int) -> Bool {
    var totalGrade = 0
    for grade in grades {
        totalGrade += grade
    }

    return (totalGrade / grades.count) > lowestPass
}

func getPassStatusReduce(for grades: [Int], lowestPass: Int) -> Bool {
    var totalGrade = grades.reduce(0) { total, grade in
        total + grade
    }

    return (totalGrade / grades.count) > lowestPass
}

func getPassStatusReduceShort(for grades: [Int], lowestPass: Int) -> Bool {
    var totalGrade = grades.reduce(0, +)

    return (totalGrade / grades.count) > lowestPass
}

getPassStatus(for: ozmaGrades, lowestPass: 60)
getPassStatusReduce(for: ozmaGrades, lowestPass: 60)
getPassStatusReduceShort(for: ozmaGrades, lowestPass: 60)

// --------------------------------------

//: reduce(into:)
// --------------------------------------
var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]
// --------------------------------------

let stockSums = stock.reduce(into: []) { result, item in
    result.append(item.key * Double(item.value))
}

//: Sorting Methods

// --------------------------------------
var names = ["Zeus", "Poseidon", "Ares", "Demeter"]
// --------------------------------------

//: sort() & sort(by:) - Sorts in place (mutates the original)
names.sort()
names.sort { a, b in
    a > b
}

names.sort(by: >)

//: sorted() & sorted(by:) - Returns a new collection that is sorted
let longToShortNames = names.sorted { $0.count > $1.count }
//: [⇒ Next: 09 - Challenge - filter, reduce, and sort](@next)
