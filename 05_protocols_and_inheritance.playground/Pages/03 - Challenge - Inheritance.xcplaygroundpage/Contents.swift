//: [⇐ Previous: 02 - Inheritance](@previous)
//: ## Episode 03: Challenge - Inheritance

/*:
 ## Challenge 1 - Building a Class Heirarchy
 Create a class named `Animal` that has…
 1. a function named `speak()` that does nothing.

 Create two `Animal` subclasses...
 1. `WildAnimal` that...
   - has an `isPoisonous` property, that is a `Bool`
   - has an initializer that takes `isPoisonous` as a parameter
 2. `Pet` that...
   - has a stored property named `name`, that is a `String`
   - has an initializer that takes `name` as a parameter
   - has a `play()` method that prints out a message
   - overrides `speak()` - It should print out a message

 Create one subclass of your choice of `WildAnimal` or `Pet`. It should do at least one of the following:
  - override `speak()`
  - override `play()`
  - Add a new computed property
  - Add a new method
 */

// TODO: Write solution here

class Animal {
    func speak() {}
}

class WildAnimal: Animal {
    let isPoisonous: Bool

    init(isPoisonous: Bool) {
        self.isPoisonous = isPoisonous
    }
}

class Pet: Animal {
    let name: String

    func play() {
        print("Playing with your pet is fun!")
    }

    override func speak() {
        print("It's okay to talk to your pet!")
    }

    init(name: String) {
        self.name = name
    }
}

class Lion: WildAnimal {
    var furColor: String {
        ["brown", "grey", "sand", "copper", "black"].randomElement() ?? "No fur color"
    }

    override func speak() {
        print("Rooooooaaaaaaaarrr")
    }

    override init(isPoisonous: Bool) {
        super.init(isPoisonous: isPoisonous)
    }
}

/*:
 ## Challenge 2 - Casting
 - Create at least one instance of each class from the first challenge.
 - Create an array that contains all of the instances.
 - Write a function that takes an `Animal` and does something different depending on what subclass it is. Try using conditional downcasting!
 - Call the function with each of your instances using a loop or whatever other method you'd like!
 */

// TODO: Write solution here

let animal = Animal()
let wildAnimal = WildAnimal(isPoisonous: true)
let pet = Pet(name: "Flecki")
let lion = Lion(isPoisonous: false)

let animalsArray = [animal, wildAnimal, pet, lion]

func analyze(animal: Animal) {
    if let wildAnimal = animal as? WildAnimal {
        switch wildAnimal {
        case let lion as Lion:
            print("I am a lion")
            lion.speak()
        default:
            print("I am a wild animal")
        }
        return
    } else if let pet = animal as? Pet {
        print("I am a pet and my name is \(pet.name)")
        return
    } else {
        print("I am an animal")
    }
}

for animal in animalsArray {
    analyze(animal: animal)
}

//: [⇒ Next: 04 - Initializers](@next)
