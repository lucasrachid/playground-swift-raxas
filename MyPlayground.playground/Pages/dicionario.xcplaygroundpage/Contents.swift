//: [Previous](@previous)

import Foundation

var products: [String:Int] = [:]

products["Apple"] = 5
products["Google"] = 16

print(products)

var products2: [Int: String] = [
    1: "Fone de Ouvido",
    2: "Macbook Air",
    3: "iPhone",
    4: "Apple Watch"
]

print(products2)
print(products2[2])
print(products2[12] ?? "Valor Padrão")
//: [Next](@next)
