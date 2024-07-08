import Foundation

//1. Classes, não precisam dos modificadores mutating, apenas em structs e enums, para indicar
//que o método modifica a instância.

//2. Class -> Reference Type - Os dados são compartilhados. Exemplo, valorA = Person(X), valorB = valorA
//neste moment, ambas as variáveis, estão apontando para o mesmo espaço de memória.
//Struct -> Value Type - Os dados são copiados para um novo espaço de memória. Exemplo valorA = Person(X), valorB = valorA
//neste momento, ele vai copiar os dados que estão alocados no espaço de memória do valorA, porém, irá armazenar em um
//novo espaço de memória.

//3. Class -> Devem ser criados um construtor, com a palavra reservada init.
//Struct -> Não é necessário criar um construtor.

// Em swift, no lugar de this, você irá utilizar a palavra reservada self.

class Person {
    var name: String
    var lastName: String?
    var height: Double
    var weight: Double
    
    init(n: String, ln: String?, h: Double, w: Double) {
        name = n
        lastName = ln
        height = h
        weight = w
    }
    
    func getFullName() -> String {
        return ("\(name) \(lastName ?? "")")
    }
    
    func updateHeight(newHeight: Double) -> Void {
        height = newHeight
        print("Olá \(name), sua nova altura é \(height)")
    }
    
    func updateWeight(newWeight: Double) -> Void {
        weight = newWeight
        print("Olá \(name), seu novo peso é \(weight)")
    }
    
    func getPersonImc() -> String {
        let imc: Double = weight / (pow(height, 2))
        return String(format: "%.2f", imc)
    }
}

// Criando uma instância de Person
var personA: Person = Person(n: "Lucas", ln: "Martins", h: 1.70, w: 96.9)

// Exibindo as propriedades de personA
print("Name: \(personA.name)")
print("Last Name: \(personA.lastName ?? "")")
print("Height: \(personA.height)")
print("Weight: \(personA.weight)")

// Testando os métodos
print(personA.getFullName()) // Output: Lucas Martins
personA.updateHeight(newHeight: 1.75)
personA.updateWeight(newWeight: 90.0)
print("IMC: \(personA.getPersonImc())")

class PersonAux {
    let name: String
    let lastName: String
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
}
