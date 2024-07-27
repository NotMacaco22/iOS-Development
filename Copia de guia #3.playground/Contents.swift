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


// + =
