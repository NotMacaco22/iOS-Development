import UIKit


/*
var age: Int = 0{
    
    didSet{ //Cada vez que se cambia el valor de la variable hara algo, en este caso mostrara un mensaje en pantalla
        print("La edad ha cambiado a \(age)")
    }
    
}

age = 3
age = 4
age = 5
*/

struct Rectangle {
    
    var width: Float
    var height: Float
    
    mutating func resize(width: Float, height: Float){
        self.width = width
        self.height = height
    }
}

/*

didSet - Es un observador que se llamara cuando haya un cambio en un valor

var age: Int = 0{
	didSet{ print(“Se ha cambiado la edad  a \(age)”) }
}

de esta manera cuando haya un cambio siempre hara lo asignado, en este caso mandara un mensaje a pantalla.

Mutating (En structs) - Permite editar las propiedades de structs o enum, esto debido a que ambas son de tipo valor, por lo que sus instancias son inmutables en sus propios metodos.

struct Rectangle {

  var ancho: Float {
    didSet {
      print("Hubo Cambios Ancho | Ancho \(ancho)")
    }
  }
  var alto: Float {
    didSet {
      print("Hubo Cambios Alto | Alto \(alto)")
    }
  }

  mutating func resize(ancho: Float, alto: Float) {
    self.ancho = ancho
    self.alto = alto
  }

}

var resultado = Rectangle(ancho: 10.2, alto: 40)
print("Ancho: \(resultado.ancho) | Alto: \(resultado.alto)")

resultado.resize(ancho: 11.3, alto: 2)
print("Ancho: \(resultado.ancho) | Alto: \(resultado.alto)")

resultado.resize(ancho: 5, alto: 10)
print("Ancho: \(resultado.ancho) | Alto: \(resultado.alto)")

Ejemplo usando didSet y mutating

Modificadores getter y setter - Basicamente son usados en propiedades computadas (osea calculadas), en el siguiente ejemplo se usa para calcular la temperatura en fahrenheit por medio de la temperatura celsius, si se cambia la celsius vuelve a calcular la temperatura en farenheit, e inclusive si se cambia directamente la temperatura en farenheit se cambia la temperatura en celsius

var temperatureCelsius: Float = 0.0

var temperatureFahrenheit: Float {
  get {
    return ((temperatureCelsius * 9 / 5) + 32)
  } 
  set {
    temperatureCelsius = (newValue - 32) * 5/9
  }
}

print("Celsius: \(temperatureCelsius)")
print("Fahrenheit: \(temperatureFahrenheit)")

temperatureCelsius = 3

print("-------------------------------------------")
print("Celsius: \(temperatureCelsius)")
print("Fahrenheit: \(temperatureFahrenheit)")

temperatureFahrenheit = 10 // Este seria el newValue

print("-------------------------------------------")
print("Celsius: \(temperatureCelsius)")
print("Fahrenheit: \(temperatureFahrenheit)")

aqui hay otro ejemplo con mas de una variable

class Rectangulo {
    var width: Double = 0.0
    var height: Double = 0.0
    
    var dimension: (Double, Double) {
        get {
            return (width, height)
        }
        set {
            width = newValue.0
            height = newValue.1
        }
    }
}

var rect = Rectangulo()
print("Width: \(rect.width), Height: \(rect.height)")  // Imprime: Width: 5.0, Height: 10.0

rect.dimension = (5.0, 10.0)
print("Width: \(rect.width), Height: \(rect.height)")  // Imprime: Width: 5.0, Height: 10.0

rect.dimension = (15.0, 20.0)
print("Width: \(rect.width), Height: \(rect.height)")  // Imprime: Width: 15.0, Height: 20.0

Closures - Se utilizan para almacenar contenido dentro de variables

let greetingClosure = {
  (name: String) -> String in 
  return "Hello, \(name)"
}

print(greetingClosure("Cesar"))


let sumar = {
  (a: Int, b: Int) -> Int in 
  return a + b 
}

var result = sumar(5, 4)
print(result)


*/

// + =
