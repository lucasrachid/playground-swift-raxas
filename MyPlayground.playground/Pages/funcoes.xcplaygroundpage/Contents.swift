//var numbers = 6
//
//var result: Set<Int> = []
//
//while (numbers > 0) {
//    let generated = Int.random(in: 1...60)
//    let res = result.insert(generated)
//    
//    if (res.inserted) {
//        numbers -= 1
//        print(result)
//    }
//}

func megaSenaGenerator(numbers: Int, minNumber: Int, maxNumber: Int) -> Set<Int> {
    var numbers = numbers

    var result: Set<Int> = []

    while (numbers > 0) {
        let generated = Int.random(in: minNumber...maxNumber)
        let res = result.insert(generated)
        
        if (res.inserted) {
            numbers -= 1
        }
    }
    
    return result
}

let result1: Set<Int> = megaSenaGenerator(numbers: 8, minNumber: 1, maxNumber: 60)
let result2: Set<Int> = megaSenaGenerator(numbers: 6, minNumber: 5, maxNumber: 15)
let result3: Set<Int> = megaSenaGenerator(numbers: 10, minNumber: 3, maxNumber: 30)

print(result1)
print(result2)
print(result3)

func passwordGenerator(quantityCharacters: Int) -> Set<Int> {
    var password: Set<Int> = []
    var quantityCharactersAux: Int
    
    if quantityCharacters > 10 {
        quantityCharactersAux = 10
    } else if quantityCharacters < 1 {
        quantityCharactersAux = 1
    } else {
        quantityCharactersAux = quantityCharacters
    }
    
    while quantityCharactersAux > 0 {
        let generated = Int.random(in: 0...9)
        let result = password.insert(generated)
        
        if (result.inserted) {
            quantityCharactersAux -= 1
        }
    }
    
    print("Sua senha é \(password)")
    return password
}

passwordGenerator(quantityCharacters: 10)
passwordGenerator(quantityCharacters: 100)
passwordGenerator(quantityCharacters: -10)

func passwordGeneratorV2(limit: Int) -> String {
    var pass: String = ""
    var max = 0
    var realLimit = limit
    
    if limit > 10 {
        realLimit = 10
    } else if limit < 1 {
        realLimit = 1
    }
    
    while max < realLimit {
        let char = Int.random(in: 0...9)
        pass += String(char)
        max += 1
    }
    
    print("Sua senha é \(pass)")
    return pass
}

passwordGeneratorV2(limit: 10)
passwordGeneratorV2(limit: 100)
passwordGeneratorV2(limit: -10)


// Quando adiciona um underscore '_' antes do nome do parâmetro
// Não será necessário chamar o nome do parâmetro no momento de chamar a função
func getMessage(_ message: String) -> String {
    return message
}

print(getMessage("Batata"))

// Desta maneira, ao chamar a função, você deverá passar os parâmetros numero1 e numero2
// Porém, dentro da função, ele terá outro nome
func somar (numero1 x: Int, numero2 y: Int) {
    print(x + y)
}

func fetchProductById(_ id: Int) -> String {
    // Banco fake
    let dict = [
        1: "iPhone",
        2: "Macbook",
        3: "iPad",
    ]
    
//    var username: String? = nil
//    
//    var password: String? = nil
    
    //    let product = dict[id]
    //
    //    if (product != nil) {
    //        return product!
    //    }
    
//    if let product = dict[id] {
//        return product
//    }
//    
//    return "Produto não encontrado"
    
//    username = "XPTO"
//    password = "Batata"
    
    guard let product = dict[id]
//          let username = username,
//          let password = password
    else { return "Produto não encontrado" }
    
    return product
}

print(fetchProductById(10))
print(fetchProductById(1))


func convertStringToInt(_ input: String) -> String {
    guard let converted = Int(input) else { return ("Falha na conversão para string: \(input)") }
    return ("A conversão foi bem sucedida: \(converted)")
}

print(convertStringToInt("5"))
print(convertStringToInt("abc"))
