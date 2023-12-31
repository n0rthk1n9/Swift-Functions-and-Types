//: [⇐ Previous: 02 - Stored Properties](@previous)
//: ## Episode 03: Computed Properties

struct Wizard {
    static var commonMagicalIngredients = [
        "Polyjuice Potion",
        "Eye of Haystack Needle",
        "The Force"
    ] {
        didSet {
            print("Magical Ingredients updated! Common stock now contains \(commonMagicalIngredients)")
        }
    }

    var firstName: String {
        willSet {
            print(firstName + " will be set to " + newValue)
        }
        didSet {
            if firstName.contains(" ") {
                print("No spaces allowed! \(firstName) is not a first name. Reverting name to \(oldValue).")
                firstName = oldValue
            }
        }
    }

    var lastName: String

    var fullName: String {
        get { return "\(firstName) \(lastName)" }
        set(newFullName) {
            let nameSubstrings = newFullName.split(separator: " ")
            guard nameSubstrings.count >= 2 else {
                print("\(newFullName) is not a name.")
                return
            }
        }
    }
}

var wizard = Wizard(firstName: "Gandalf", lastName: "Greyjoy")
wizard.firstName = "Hermione"
wizard.lastName = "Kenobi"
wizard.firstName = "Merlin Rincewind"

wizard.fullName = "SeverusWenderlich"
//: [⇒ Next: 04 - Lazy Properties](@next)
