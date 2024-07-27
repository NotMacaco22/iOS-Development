import UIKit

/*

 //Ejercicio 1 - Calcular el Area y el Perimetro de un Rectangulo
 
 func calculateAreaAndPerimeter (ancho: Float, alto: Float) -> (area: Float, perimetro: Float){
    
    let area = ancho * alto
    let perimetro = 2 * (ancho + alto)
    return (area, perimetro)
}

var resultado = calculateAreaAndPerimeter(ancho: 19, alto: 5)
print("El area es: \(resultado.area)")
print("El perimetro es: \(resultado.perimetro)")

*/


/*

 //Ejercicio 2 - Calcular el Area de un Triangulo utilizando la Formula de Heron
 
func calculateAreaTriangle (a: Float, b: Float, c: Float) -> (Float?) {
    if (a <= 0 || b <= 0 || c <= 0 || (a + b <= c) || (a + c <= b) || (b + c <= a)){
        return nil
    }
    
    let s = (a + b + c) / 2
    let area = sqrt(s * (s - a) * (s - b) * (s - c))
    return area
}

var resultado = calculateAreaTriangle(a: 3, b: 4, c: 5)
if (resultado == nil) {
    print("Datos invalidos para los lados del triangulo")
} else {print("El area del triangulo es: \(resultado ?? 0)")} //Se pone el ?? 0 para proporcionarle un valor opcional en caso que no haya nada, sin embargo ya lo estamos haciendo con el if, solo es para que no tire el warning haha

*/

/*

 //Ejercicio 3 - Calcular estadisticas basicas de un Array de Enteros

 func calculateEstadistics(numbers: [Int]) -> (media: Float, moda: Float, mediana: Float) {
    
    let sum = numbers.reduce(0, +)
    let media = Float(sum / numbers.count)
    let numbersSorted = numbers.sorted()
    
    var mediana = 0
    
    if numbers.count % 2 == 0 {
        mediana = (numbersSorted[numbers.count / 2 - 1] + numbersSorted[numbers.count / 2]) / 2
    } else {mediana = numbers.count / 2}
    
    var frecuencia = [Int : Int]()
    
    for i in numbers{
        if frecuencia[i] == nil{frecuencia[i] = 0}
        frecuencia[i]! += 1
    }
    
    let moda : Float
    if let maxFrecuencia = frecuencia.values.max(){
        moda = Float(maxFrecuencia)
    } else {moda = 0}
    
    return ( Float(media), Float(moda), Float(mediana) )
}

var estadistics = calculateEstadistics(numbers: [5, 5, 5, 5, 3, 5, 2, 2])
print("Media: \(estadistics.media)")
print("Moda: \(estadistics.moda)")
print("Mediana: \(estadistics.mediana)")

*/


/*
 
 //Actividad 4: Funciones
 //Recursividad
 
func sumaRecursividad(n: Int) -> Int {
    if (n == 0){
        return 0
    } else {return n + sumaRecursividad(n: n - 1)}
}

var resultado = sumaRecursividad(n: 10)
print("Resultado: \(resultado.self)")

 */

/*
 
 //Funcion NO Recursiva
 
func sumaIterativa(n: Int) -> Int{
    var sum = 0
    for i in 0...n {
        sum = sum + i
    }
    return sum
}

var resultado = sumaIterativa(n: 10)
print("Resultado: \(resultado.self)")

*/


/*
 
 //Ejercicio 2: Implementar la busqueda binaria recursiva en un array ordenado
 
func busquedaBinariaRecursiva(arreglo: [Int], valorBuscar: Int, inicio: Int, fin: Int) -> Int? {
    
    if inicio > fin {
        return nil
    }
    
    let medio = (inicio + fin) / 2
    
    if (arreglo[medio] == valorBuscar){
        return medio
    } else if (arreglo[medio] < valorBuscar){
        return busquedaBinariaRecursiva(arreglo: arreglo, valorBuscar: valorBuscar, inicio: medio + 1, fin: fin)
    } else { return busquedaBinariaRecursiva(arreglo: arreglo, valorBuscar: valorBuscar, inicio: medio - 1, fin: fin) }
}

var numerosOrdenados = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var posicion = busquedaBinariaRecursiva(arreglo: numerosOrdenados, valorBuscar: 10, inicio: 0, fin: numerosOrdenados.count - 1)

if (posicion != nil) {
    print("El valor se encuentra en la posicion: \(posicion ?? 0) ")
} else {print("El valor no se encuentra en el Array")}

*/

/*

 //Programacion Orientada a Objetos
 //Ejercicio 1: Crear una clase Coche y un metodo para describirlo
 
 class Coche{
    var marca: String
    var modelo: String
    var anio: Int
    
    init(marca: String, modelo: String, anio: Int) {
        self.marca = marca
        self.modelo = modelo
        self.anio = anio
    }
    
    func describir(){
        print("Marca: \(marca) | Modelo: \(modelo) | Anio: \(anio)")
        
    }
    
}

var miCoche = Coche(marca: "Toyota", modelo: "Prado", anio: 2008)
miCoche.describir()

*/

/*

 //Estructuras en Swift
 //Ejercicio 2: Crea un struct Rectangulo con metodos para calcular el area y el perimetro
 
struct Rectangle{

    var ancho: Float
    var alto: Float
    
    func calcularArea() -> Float{
        return ancho * alto
    }
    
    func calculaPerimetro() -> Float{
        return 2 * (ancho + alto)
    }

}

var miRectangulo = Rectangle(ancho: 5, alto: 10)
print("Area: \(miRectangulo.calcularArea() )")
print("Perimetro: \(miRectangulo.calculaPerimetro())")

*/

/*
 
 //Protocolos y Clases
 //Ejercicio 3: Definir un protocolo Volable y conformar clases Pajaro y Avion
 
protocol Volable{
    func volar() -> String
}

class Pajaro: Volable{
    func volar() -> String {
        return "El pajaro esta volando"
    }
}

class Avion: Volable{
    func volar() -> String {
        return "El avion esta despegando"
    }
}

var miPajaro = Pajaro()
var miAvion = Avion()

print( miPajaro.volar() )
print( miAvion.volar() )

*/

/*
 
 //Igual que el otro pero lo prefiero asi hahaha
 
protocol Volable2{
    func volar()
}

class Pajaro2: Volable2{
    func volar() {
        print("El pajaro esta volandooo")
    }
}

class Avion2: Volable2{
    func volar() {
        print("El avion esta volando chavales")
    }
}

var miPajarito2 = Pajaro2()
var miAvioncito2 = Avion2()

miPajarito2.volar()
miAvioncito2.volar()

*/

 
 //+ =
