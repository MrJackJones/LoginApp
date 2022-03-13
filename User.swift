import Foundation

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            username: "admin",
            password: "password",
            person: Person(
                name: "Ivan Baranov",
                contacts: [
                    Contact(
                        name: "GitHub",
                        value: "https://github.com/MrJackJones"
                    ),
                    Contact(
                        name: "Facebook",
                        value: "https://www.facebook.com/ibaranov90"
                    ),
                ],
                education: Education(
                    universityName: "Московский энергетический институт",
                    speciality: "Защита информации в автоматизированных информационных системах"
                )
            )
        )
    }
    
}

struct Person {
    let name: String
    let contacts: [Contact]
    let education: Education
}

struct Contact {
    let name: String
    let value: String
}

struct Education {
    let universityName: String
    let speciality: String
}
