//: [Previous](@previous)

import Foundation

let latitude: Double = 23.21

//let coords: (Double, Double) = (23.4, 54.22)
//coords.0
//coords.1

let coords: (lat: Double, lng: Double) = (lat: 23.2, lng: 54.22)
print(type(of: coords))
print(coords)
print(coords.lat)

let camera: (x: Int, y: Int, z: Int) = (x: 10, y: 20, z: 30)

//DESTRUTOR

let (x, y, z) = camera
print(x)
print(y)
print(z)

var userNames: [String] = []

// APPEND, adiciona um elemento ao array
userNames.append("Rachid")
userNames += ["Max", "Igor"]
print(userNames)

if !userNames.isEmpty && userNames.count > 1 && !userNames[2].isEmpty {
    print("Username: \(userNames[2])")
}

// SLICE -> Fatiar
// Dessa maneira, ele vai apontar para o array de cima, contendo o indice 0 até o 2.
// Se caso você pegasse por exemplo do indice 1...2, na hora que for acessar informação dele
// também irá ter do indice 1 e 2, pulando o 0
let tresPrimeirosElementos = userNames[0...2]
print(tresPrimeirosElementos)

// NOVO ARRAY
// Caso queira um novo array, contendo os indices do array anterior, deverá adicionar o método Array
let doisPrimeirosElementos = Array(userNames[1...2])
print(doisPrimeirosElementos[0])

// Métodos do array para removerß um elemento
//userNames.remove(at: 1)
//userNames.removeAll()
//userNames.removeFirst(0)

//: [Next](@next)
