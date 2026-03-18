Proceso TrianguloInteligente
    Definir lado1, lado2, lado3, altura, angulo, area Como Real
    Definir validez, tipoLados, tipoAngulos, mensajeConsistencia Como Cadena
    
	Escribir "=========================================="
    Escribir "Ingrese el lado 1: "
    Leer lado1
    Escribir "Ingrese el lado 2: "
    Leer lado2
    Escribir "Ingrese el lado 3: "
    Leer lado3
    Escribir "Ingrese la altura respecto a la base: "
    Leer altura
    Escribir "Ingrese el angulo principal en grados: "
    Leer angulo
	Escribir "=========================================="
    
    validez <- "Invalido"
    tipoLados <- "N/A"
    tipoAngulos <- "N/A"
    area <- 0
    mensajeConsistencia <- "N/A"
    
    Si (lado1 + lado2 > lado3) Y (lado1 + lado3 > lado2) Y (lado2 + lado3 > lado1) Entonces
        validez <- "Triangulo Valido"
        
        Si lado1 = lado2 Y lado2 = lado3 Entonces
            tipoLados <- "Equilatero"
        Sino
            Si lado1 = lado2 O lado1 = lado3 O lado2 = lado3 Entonces
                tipoLados <- "Isosceles"
            Sino
                tipoLados <- "Escaleno"
            FinSi
        FinSi
        
        Si angulo < 90 Entonces
            tipoAngulos <- "Acutangulo"
        Sino
            Si angulo = 90 Entonces
                tipoAngulos <- "Rectangulo"
            Sino
                tipoAngulos <- "Obtusangulo"
            FinSi
        FinSi
        
        area <- (lado1 * altura) / 2
        
        Si altura > lado1 O altura > lado2 O altura > lado3 Entonces
            mensajeConsistencia <- "Advertencia: La altura ingresada es mayor que al menos uno de los lados"
        Sino
            mensajeConsistencia <- "Altura consistente con los lados."
        FinSi
        
        Escribir "==================== ANALISIS DEL TRIANGULO ===================="
        Escribir "Validez: ", validez
        Escribir "Tipo por lados: ", tipoLados
        Escribir "Tipo por angulos: ", tipoAngulos
        Escribir "Area: ", area
        Escribir "Consistencia: ", mensajeConsistencia
		Escribir "================================================================"
        
    Sino
        Escribir "==================== ANALISIS DEL TRIANGULO ===================="
        Escribir "Validez: Los lados ingresados no forman un triangulo."
        Escribir "Ejecucion terminada."
		Escribir "================================================================"
    FinSi
FinProceso
