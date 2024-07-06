import UIKit

let greeting = "Hello, playground"

var greetings = "Hello, World"
greetings = "Hello, Playground!"

var stringValues = "20,5,10,11"

var resultado: Float = stringValues.split(separator: ",").reduce(0.0, { acc, currentValue in
    acc + (Float(currentValue) ?? <#default value#>)
})

if resultado > 30 {
    print("Maior que 30")
} else if resultado > 20 {
    print("Maior que 20")
} else {
    print("F")
}

switch resultado {
case 30:
    print("Maior que 30")
case 20:
    print("Maior que 20")
default:
    print("X")
}

let variavelTernariaLet: String = resultado > 20 ? "Maior que 20" : "Default"
print("Condição ternária \(variavelTernariaLet)")

var variavelTernariaVar: String = resultado > 20 ? "Val" : "Default"
print("Condição ternária \(variavelTernariaVar)")

var showNameOfWeekDay: [String: () -> ()] = [
    "today": { printBatata() },
]

func printBatata() -> Void {
    print("Batata")
}

//showNameOfWeekDay["today"]?()

func showDayOfWeek(day: String) -> String {
    switch day {
    case "SEG", "TER", "QUA", "QUI":
        return "Dia inútil"
    case "SEX", "SAB":
        return "Drogas e cachaça"
    case "DOM":
        return "Arrependimento e solitude"
    default:
        return "\(day) não é um argumento válido"
    }
}

print(showDayOfWeek(day: "Batata"))
print(showDayOfWeek(day: "SAB"))
