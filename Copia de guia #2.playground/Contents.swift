import UIKit

//Ejercicio 1: Enumeraciones y Delegaciones

/*

enum EstadoPedido{ //Hago mi enum normal con los casos
    case procesando, enviado, entregado
}

protocol NotificacionPedido { //Luego un protocolo el cual lo voy a implementar despues en una clase
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) -> Void
}

class Pedido{ //En mi clase pedido
    
    var estado: EstadoPedido //Tengo estado que va a ser de tipo EstadoPedido osea uno de los casos del enum
    
    init(estado: EstadoPedido) { //Luego lo inicializo en el constructor
        self.estado = estado } //Inicializado
    
    //Despues inicializo mi delegate/delagador, QUE SEA OPCIONAL ?
    var delegate: NotificacionPedido? // ? en caso que al delegate no se le haya asignado un delegado
    //En caso de no haberle asignado ningun delegado sera nil
    
    func mostrarEstado(){ //Una funcion para mostrar el estado actual
        print("Estado: \(self.estado)") }

    func cambiarEstado(nuevoEstado: EstadoPedido){ //Otra funcion para cambiar el estado, nuevoEstado igual va a ser de tipo EstadoPedido para usar los mismos casos
        estado = nuevoEstado //Se asigna el nuevo estado al pedido
        
        if delegate != nil{ //Distinto a nil, osea que ya se asigno un delegado
            delegate?.notificarCambioDeEstado(nuevoEstado: estado) //Llama al delegador, el cual tiene una funcion del gestor, es decir el delegado
            //Aqui lo que hace el Delegador/Delegate es simplemente decir al delegador que use una funcion especifica del delegado
        }
        
    }
}

class GestorPedido: NotificacionPedido{ //La clase GestorPedido que a como su nombre lo dice gestiona el pedido
    //El gestor se ajusta al protocolo que se creo anteriormente
    
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) { //Esta funcion simplemente imprime el nuevo estado que se asigno
        print("El nuevo estado es: \(nuevoEstado)")
    }
}

var gestor = GestorPedido() //Instancio la clase gestor tipo GestorPedido
var pedido = Pedido(estado: EstadoPedido.procesando) //Instancio la clase pedido tipo Pedido con su respectivio estado

pedido.delegate = gestor //Aqui asign por medio del delegador al delegado osea el gestor
pedido.mostrarEstado() //Muestro el estado que se tenia en primer lugar
pedido.cambiarEstado(nuevoEstado: EstadoPedido.entregado) //Y luego cambio el estado, a su vez el delegado le dice al delegador que se active, mostrando un mensaje con el nuevo estado

*/

/*

//Ejercicio 2: Funciones Estativas y Clases

class Calculadora{
    
    static func sum(a: Int, b: Int) -> Int{
        return a + b }
    
    static func rest(a: Int, b: Int) -> Int{
        return a - b }
    
}

func calcularSumaYRestaTotales(numeros: [Int]) -> (sumaTotal: Int, restaTotal: Int) {
    
    var sumaTotal = 0
    var restaTotal = 0
    
    for i in numeros {
        sumaTotal = Calculadora.sum(a: sumaTotal, b: i)
        restaTotal = Calculadora.rest(a: restaTotal, b: i)
    }
    
    return (sumaTotal, restaTotal)
    
}

var numeros = [1, 2, 3, 4, 5]
var resultado = calcularSumaYRestaTotales(numeros: numeros)

print("Suma Total: \(resultado.sumaTotal)")
print("Resta Total: \(resultado.restaTotal)")

*/

/*

//Ejercicio 3: Polimorfismo y Structs

protocol Figura{
    func calcularArea() -> Float
}

struct Cuadrado: Figura{
    
    var lado: Float
    
    func calcularArea() -> Float {
        return lado * lado
    }
}

struct Rectangulo: Figura{
    
    var ancho: Float
    var alto: Float
    
    func calcularArea() -> Float {
        return ancho * alto
    }
}

func calcularAreaTotal(figuras: [Figura]) -> Float{
    var areaTotal = Float(0.0)
    
    for i in figuras{
        areaTotal = areaTotal + i.calcularArea()
    }
    return areaTotal
}

var resultadoCuadrado = Cuadrado(lado: 10.5)
var resultadoRectangulo = Rectangulo(ancho: 10.5, alto: 5.5)

var figuras: [Figura] = [resultadoCuadrado, resultadoRectangulo]
var areaTotal = calcularAreaTotal(figuras: figuras)

print("Area del Cuadrado: \( resultadoCuadrado.calcularArea() )")
print("Area del Rectangulo: \( resultadoRectangulo.calcularArea() )")
print("Area Total (Suma de Ambos): \(areaTotal)")

*/

/*

//Ejercicio 4: Enums y Funciones Estaticas

enum OperacionMatematica{
    case suma, resta, mult, div
}

class OperadorMatematico{
    
    static func realizarOperacion(a: Float, b: Float, opc: OperacionMatematica) -> Any{
        
        switch opc {
        
        case .suma:
            return a + b
        
        case .resta:
            return a - b
            
        case .mult:
            return a * b
            
        case .div:
            if (b != 0){
                return a / b
            } else {return "Error - Division entre 0"}
        }
    }
}

var resultadoSum = OperadorMatematico.realizarOperacion(a: 10, b: 5, opc: .suma)
print("Resultado Suma: \(resultadoSum)")

var resultadoResta = OperadorMatematico.realizarOperacion(a: 10, b: 3, opc: .resta)
print("Resulado Resta: \(resultadoResta)")

var resultadoMultiplicacion = OperadorMatematico.realizarOperacion(a: 10, b: 5, opc: .mult)
print("Resulatdo Multiplicacion: \(resultadoMultiplicacion)")

var resultadoDiv = OperadorMatematico.realizarOperacion(a: 10, b: 0, opc: .div)
print("Resultado Division: \(resultadoDiv)")

*/

/*

//Ejercicio 5: Clases, Structs y Polimorfismo

protocol Empleado{
    func calcularSalario() -> Float
}

class EmpleadoBase: Empleado{
    
    var salarioBase: Float
    
    init(salarioBase: Float) {
        self.salarioBase = salarioBase
    }
    
    func calcularSalario() -> Float {
        return salarioBase
    }
}

struct EmpleadoContrato: Empleado{
    
    var tarifaHora: Float
    var horasTrabajadas: Float
    
    func calcularSalario() -> Float {
        return tarifaHora * horasTrabajadas
    }
}

func calcularSalarioTotal(empleados: [Empleado]) -> Float{
    
    var salarioTotal = Float(0.0)
    
    for i in empleados{
        salarioTotal = salarioTotal + i.calcularSalario()
    }
    
    return salarioTotal
}

var empleadoBase = EmpleadoBase(salarioBase: 3500.50)
var empleadoContrato = EmpleadoContrato(tarifaHora: 20, horasTrabajadas: 100)
var empleados: [Empleado] = [empleadoBase, empleadoContrato]
print("Salario Base: \(empleadoBase.salarioBase)")

var salarioTotal = calcularSalarioTotal(empleados: empleados)
print("Salario Total: \(salarioTotal)")

*/
 
// + =
 
