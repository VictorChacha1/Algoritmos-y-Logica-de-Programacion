Proceso AccesoLaboratorio
    Definir credencial, horario Como Caracter
    Definir minutosTarde, faltas Como Entero
    Definir estado, motivo, prioridad Como Cadena
	
	Escribir "========================================================"
    Escribir "Trae credencial (si/no): "
    Leer credencial
    Escribir "Pertenece al horario actual (si/no): "
    Leer curso
    Escribir "Ingrese los minutos que llego tarde, 0 si es puntal: "
    Leer minutosTarde
    Escribir "Ingrese el numero de faltas: "
    Leer faltas
	Escribir "========================================================"
    
    estado <- "Ingresado sin problema"
    motivo <- "Cumple con todos los requisitos"
    prioridad <- "Baja"
    
    Si credencial = "no" o credencial = "N" Entonces
        estado <- "No puede ingresar"
        motivo <- "No trae credencial"
        prioridad <- "Alta"
    Sino
        Si horario = "no" o horario = "N" Entonces
            estado <- "No puede ingresar"
            motivo <- "No pertenece al horario actual"
            prioridad <- "Alta"
        Sino
            Si faltas >= 5 Entonces
                estado <- "No puede ingresar"
                motivo <- "Tiene 5 o mas faltas acumuladas"
                prioridad <- "Alta"
            Sino
                Si minutosTarde > 10 Entonces
                    estado <- "No puede ingresar"
                    motivo <- "Llego con mas de 10 minutos tarde"
                    prioridad <- "Alta"
                Sino
                    Si faltas >= 3 y faltas < 5 Entonces
                        estado <- "Ingresa con advertencia"
                        motivo <- "Tiene 3 o 4 faltas acumuladas"
                        prioridad <- "Media"
                    Sino
                        Si minutosTarde > 0 y minutosTarde <= 10 Entonces
                            estado <- "Ingresa con advertencia"
                            motivo <- "Llego tarde dentro de los 10 minutos"
                            prioridad <- "Media"
                        FinSi
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
    
    Escribir "=================Resultado================="
    Escribir "Estado final: ", estado
    Escribir "Motivo: ", motivo
    Escribir "Prioridad: ", prioridad
	Escribir "===================0======================="
FinProceso

