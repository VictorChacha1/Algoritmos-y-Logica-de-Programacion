Proceso CajeroAutomatico
    Definir saldoUsuario, totalCajero Como Entero
    Definir b20, b10, b5, b1 Como Entero
    Definir monto, faltante Como Entero
    Definir e20, e10, e5, e1 Como Entero
    
    saldoUsuario <- 500
    b20 <- 10
    b10 <- 10
    b5 <- 10
    b1 <- 10
    totalCajero <- (b20 * 20) + (b10 * 10) + (b5 * 5) + b1
    
    e20 <- 0; e10 <- 0; e5 <- 0; e1 <- 0
    
    Escribir "============== CAJERO AUTOMATICO =============="
    Escribir "Su saldo actual es: ", saldoUsuario
    Escribir "Ingrese el monto a retirar: "
    Leer monto
    
    Si monto <= 0 Entonces
        Escribir "Error: El monto debe ser positivo."
    Sino
        Si monto > saldoUsuario Entonces
            Escribir "Error: Saldo insuficiente en su cuenta."
        Sino
            Si monto > totalCajero Entonces
                Escribir "Error: El cajero no tiene suficiente efectivo total."
            Sino
                faltante <- monto
                
                e20 <- trunc(faltante / 20)
                Si e20 > b20 Entonces
                    e20 <- b20
                FinSi
                faltante <- faltante - (e20 * 20)
                
                e10 <- trunc(faltante / 10)
                Si e10 > b10 Entonces
                    e10 <- b10
                FinSi
                faltante <- faltante - (e10 * 10)
                
                e5 <- trunc(faltante / 5)
                Si e5 > b5 Entonces
                    e5 <- b5
                FinSi
                faltante <- faltante - (e5 * 5)
                
                e1 <- trunc(faltante / 1)
                Si e1 > b1 Entonces
                    e1 <- b1
                FinSi
                faltante <- faltante - (e1 * 1)
                
                Si faltante = 0 Entonces
                    saldoUsuario <- saldoUsuario - monto
                    totalCajero <- totalCajero - monto
                    b20 <- b20 - e20
                    b10 <- b10 - e10
                    b5 <- b5 - e5
                    b1 <- b1 - e1
                    
                    Escribir "============ TRANSACCION EXITOSA ============"
                    Escribir "Billetes entregados:"
                    Escribir "Billete de 20: ", e20
                    Escribir "Billete de 10: ", e10
                    Escribir "Billete de 5:  ", e5
                    Escribir "Billete de 1:  ", e1
                    Escribir "Su saldo restante: ", saldoUsuario
                    Escribir "Efectivo restante en cajero: ", totalCajero
					Escribir "============================================="
                Sino
                    Escribir "Error: El cajero no dispone de la denominacion exacta de billetes para entregar ese monto."
                FinSi
            FinSi
        FinSi
    FinSi
FinProceso

