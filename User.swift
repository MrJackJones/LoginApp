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
                age: 31,
                contacts: [
                    Contact(
                        type: "GitHub",
                        value: "https://github.com/MrJackJones"
                    ),
                    Contact(
                        type: "Facebook",
                        value: "https://www.facebook.com/ibaranov90"
                    ),
                ],
                works: [
                    Work(
                        companyName: "Freelance",
                        position: "Программист Python",
                        responsibilitys: [
                            Responsibility(name: "Разработка бэкенда на Django"),
                            Responsibility(name: "Написание UnitTest"),
                            Responsibility(name: "Разработка и поддержка API (Django REST framework)"),
                            Responsibility(name: "Развертывание тестовых серверов"),
                            Responsibility(name: "Проработка архитектуры проектов"),
                            Responsibility(name: "Работа с Docker"),
                        ]
                    ),
                ],
                educations: [
                    Education(
                        universityName: "Московский энергетический институт",
                        Speciality: "Защита информации в автоматизированных информационных системах"
                    ),
                    Education(
                        universityName: "Московский приборостроительный техникум",
                        Speciality: "Специалист по обслуживанию средств вычислительной техники"
                    ),
                ]
            )
        )
    }
    
}

struct Person {
    let name: String
    let age: Int
    let contacts: [Contact]
    let works: [Work]
    let educations: [Education]
}

struct Contact {
    let type: String
    let value: String
}

struct Work {
    let companyName: String
    let position: String
    let responsibilitys: [Responsibility]
}

struct Responsibility {
    let name: String
}

struct Education {
    let universityName: String
    let Speciality: String
}
