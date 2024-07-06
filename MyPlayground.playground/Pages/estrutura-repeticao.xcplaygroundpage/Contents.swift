//: [Previous](@previous)

import Foundation

var contador = 0

while contador <= 10 {
    print(contador)
    contador += 1
}

var i = 0

repeat {
  print(i)
  i += 1
} while i <= 10

// Ranges

let range = 0...5 // Inclusive -> Terá um range de 0 até 5
let r = 0..<5 // Exclusive -> Terá um range de 0 até 4

var sum = 0
var count = 10

for i in 0...count {
    sum += i
    print("Soma \(sum)")
}

var soma = 0
for i in range {
    soma += i
    print("Soma \(soma)")
}

let dollars: [Double] = [5.1, 5.2, 4.9, 5.32, 5.43, 5.11]
let days: [String] = ["01/02", "02/02", "03/02", "04/02", "05/02", "06/02"]

for i in 0..<dollars.count {
    print("Indice \(i)")
    print("Dolar \(dollars[i]), Dia: \(days[1])")
}

// FOR COM CONDIÇÃO

for i in 0..<dollars.count where dollars[i] < 5.0 {
    print("Segundo print")
    print("Dolar \(dollars[i]), Dia: \(days[1])")
}

// FOR -> Iterando sobre a lista
for day in days {
    if day == "04/02" {
        
    }
    // Temos o Break e Continue, sendo que o Break para a iteração do FOR
    // E o Continue, passa para a próxima iteração
    
    print(day)
}

//: [Next](@next)
