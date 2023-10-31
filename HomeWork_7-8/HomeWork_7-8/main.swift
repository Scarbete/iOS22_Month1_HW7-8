import Foundation

// Задание - 1
let countOfText = { (text: String) -> Int in
    return text.count
}

let text = "Человек, познавая любовь, рискует познать ненависть."
print("Задание - 1\nКоличество букв в предложении: \(countOfText(text))\n")


// Задание - 2
let convertToDollars = { (amount: Double, dollar: Double) -> Double in
    return amount * dollar
}

let rub = 5000.0
let dollar = 0.013

print("Задание - 2\nСумма в долларах: \(convertToDollars(rub, dollar))\n")


// Задание - 3
// users берутся из UsersData
let verifyUsers = users.filter { $0.isVerified }
print("Задание - 3")
dump(verifyUsers)


// Задание - 4
print("\nЗадание - 4")
func filter(users: [User], yearsOld: (User) -> ()) {
    for user in users {
        yearsOld(user)
    }
}

let youngerThan18 = { (user: User) in
    if user.age < 18 {
        print("ID: \(user.id)\nИмя: \(user.name)\nВозраст: \(user.age) \nМладше 18 лет\n")
    }
}

let olderThan40 = { (user: User) in
    if user.age > 40 {
        print("ID: \(user.id)\nИмя: \(user.name)\nВозраст: \(user.age) \nСтарше 40 лет\n")
    }
}

filter(users: users, yearsOld: youngerThan18)
filter(users: users, yearsOld: olderThan40)
