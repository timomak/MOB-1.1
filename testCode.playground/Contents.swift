protocol CanMakeNoise {
    func makeNoise()
}

class Elephant: CanMakeNoise {
    func makeNoise() {
        print("meow")
    }
}

class Pig: CanMakeNoise {
    func makeNoise() {
        print("meow")
    }
}

class Cow: CanMakeNoise {
    func makeNoise() {
        print("meow")
    }
}


let elephant = Elephant()
let pig = Pig()
let cow = Cow()

let arrayOfNoiseMaker: [CanMakeNoise] = [elephant, pig, cow]

for i in arrayOfNoiseMaker {
    i.makeNoise()
}
