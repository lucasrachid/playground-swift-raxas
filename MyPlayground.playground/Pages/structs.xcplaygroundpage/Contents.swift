// Por padrão Struc, é IMUTÁVEL, para trocar as propriedaes dela, deverá definir como mutável
//utilizando a palavra reservada "mutating" na funcao que irá alterar o valor, e a propriedade, deverá
//ser VAR.
//A instancia da variável, também deverá ser var

import Foundation

struct User {
    let name: String
    let lastName: String?
    let isAdmin: Bool
    let cpf: String
    var ranking: Double
    
    func getFullName() -> String {
        return ("\(name) \(lastName ?? "")")
    }
    
    mutating func resetRanking() -> Void {
        ranking = 0
        print("Ranking foi resetado!")
    }
}

var userA: User = User(name: "Lucas", lastName: nil, isAdmin: true, cpf: "011.851.648-88", ranking: 1)
var userB: User = User(name: "Igor", lastName: nil, isAdmin: false, cpf: "231.441.328-78", ranking: 4)
var userC: User = User(name: "Max", lastName: nil, isAdmin: false, cpf: "256.477.394-13", ranking: 6)

//print(userA.getFullName())

print(userA)
userA.resetRanking()

print(userA)

struct Person {
    var name: String
    var lastName: String?
    var height: Double
    var weight: Double
    
    func getFullName() -> String {
        return ("\(name) \(lastName ?? "")")
    }
    
    mutating func updateHeight(newHeight: Double) -> Void {
        height = newHeight
        print("Olá \(name), sua nova altura é \(height)")
    }
    
    mutating func updateWeight(newWeight: Double) -> Void {
        weight = newWeight
        print("Olá \(name), seu novo peso é \(weight)")
    }
    
    func getPersonImc() -> String {
        let imc: Double = weight / (pow(height, 2))
        return String(format: "%.2f", imc)
    }
}

var person: Person = Person(name: "Lucas Rachid", lastName: nil, height: 1.70, weight: 96.9)

print("Olá \(person.getFullName()), o seu IMC é \(person.getPersonImc())")
