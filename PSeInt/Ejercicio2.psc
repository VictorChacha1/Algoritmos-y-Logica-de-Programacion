Proceso CalculoBeca
    Definir promedio Como Real
    Definir materiasPerdidas, asistencia, nivelAyuda Como Entero
    Definir ingresosBajos, proyectos Como Caracter
    Definir tipoAyuda, razonAcademica, razonEconomica, observacionFinal Como Cadena
    
	Escribir "=================================================="
    Escribir "Ingrese el promedio academico:"
    Leer promedio
    Escribir "Ingrese porcentaje de asistencia por ejemplo 85:"
    Leer asistencia
    Escribir "Ingrese numero de materias perdidas:"
    Leer materiasPerdidas
    Escribir "Tiene ingresos familiares bajos (s/n):"
    Leer ingresosBajos
    Escribir "Participa en proyectos (s/n):"
    Leer proyectos
	Escribir "=================================================="
	
    nivelAyuda <- 0
    razonAcademica <- "No evaluado"
    razonEconomica <- "No aplica"
    observacionFinal <- "Ninguna"
    
    Si promedio < 7 Entonces
        nivelAyuda <- 0
        razonAcademica <- "Promedio menor a 7"
    Sino
        Si asistencia < 80 Entonces
            nivelAyuda <- 0
            razonAcademica <- "Asistencia menor al 80%"
        Sino
            Si promedio >= 9 Y asistencia >= 90 Y materiasPerdidas = 0 Entonces
                nivelAyuda <- 3
                razonAcademica <- "Excelencia academica, sin materias perdidas"
            Sino
                Si promedio >= 8 Y asistencia >= 85 Entonces
                    nivelAyuda <- 2
                    razonAcademica <- "Buen promedio y asistencia"
                Sino
                    nivelAyuda <- 0
                    razonAcademica <- "Promedio entre 7 y 7.99, sin beneficio base"
                FinSi
            FinSi
        FinSi
    FinSi
    
    Si (proyectos = "s" O proyectos = "S") Y (ingresosBajos = "s" O ingresosBajos = "S") Entonces
        razonEconomica <- "Participa en proyectos y tiene ingresos bajos"
        
        Si nivelAyuda = 0 Y promedio >= 7 Y asistencia >= 80 Entonces
            nivelAyuda <- 1
            observacionFinal <- "Sube a ayuda de materiales por perfil economico"
        Sino
            Si nivelAyuda = 1 Entonces
                nivelAyuda <- 2
                observacionFinal <- "Sube a beca parcial por perfil economico"
            Sino
                Si nivelAyuda = 2 Entonces
                    Si materiasPerdidas = 0 Entonces
                        nivelAyuda <- 3
                        observacionFinal <- "Sube a beca completa por perfil economico"
                    Sino
                        observacionFinal <- "No puede tener beca completa porque perdio materias"
                    FinSi
                FinSi
            FinSi
        FinSi
    Sino
        razonEconomica <- "No cumple requisitos de ingresos y proyectos juntos"
        observacionFinal <- "Mantiene su beneficio base"
    FinSi
    
    Si nivelAyuda = 3 Y materiasPerdidas > 1 Entonces
        nivelAyuda <- 2
        observacionFinal <- "Se reduce a beca parcial por perder mas de 1 materia"
    FinSi
    
    Si nivelAyuda = 0 Entonces
        tipoAyuda <- "Sin beneficio"
    Sino
        Si nivelAyuda = 1 Entonces
            tipoAyuda <- "Solo ayuda de materiales"
        Sino
            Si nivelAyuda = 2 Entonces
                tipoAyuda <- "Beca parcial"
            Sino
                tipoAyuda <- "Beca completa"
            FinSi
        FinSi
    FinSi
    
    Escribir "================== RESULTADO DE EVALUACION =================="
    Escribir "Tipo de ayuda: ", tipoAyuda
    Escribir "Razon academica: ", razonAcademica
    Escribir "Razon economica: ", razonEconomica
    Escribir "Observacion: ", observacionFinal
	Escribir "============================================================="
	
FinProceso
