//: [⇐ Previous: 04 - Closure Syntax](@previous)
//: ## Episode 05: Challenge - Closure Syntax

/*:
 ## Challenge 1
 Rewrite the long closure with the following syntax:
  * No parameter types
  * No parameter or return types
  * No parameter names
 Try passing the same values into each closure. Their printed results should match!
 */

// --------------------------------------
let copyLines = { (offense: String, repeatCount: Int) in
    print(String(repeating: "I must not \(offense).", count: repeatCount))
}

// --------------------------------------

// TODO: Write solution here
typealias OffenseRepetition = (String, Int) -> Void

let copyLinesNoParameterTypesAndReturnTypes: OffenseRepetition = { offense, repeatCount in
    print(String(repeating: "I must not \(String(offense)).", count: repeatCount))
}

copyLines("lie", 18)
copyLinesNoParameterTypesAndReturnTypes("lie", 18)
//: [⇒ Next: 06 - forEach and map](@next)
