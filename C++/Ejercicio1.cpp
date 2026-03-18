#include <iostream>
#include <string>
using namespace std;

int main() {
    char credencial, horario;
    int minutosTarde, faltas;
    string estado, motivo, prioridad;

    cout << "===Acceso al laboratorio=== \n";
    cout << "Trae credencial(s/n): ";
    cin >> credencial;
    cout << "Pertenece al horario actual (s/n): ";
    cin >> horario;
    cout << "Ingrese los minutos de atraso 0 si llego puntual: ";
    cin >> minutosTarde;
    cout << "Ingrese el numero de faltas: ";
    cin >> faltas;

    estado = "Ingresa sin problema";
    motivo = "Cumple con todos los requisitos";
    prioridad = "Baja";

    if (credencial == 'n' || credencial == 'N') {
        estado = "No puede ingresar";
        motivo = "No trae credencial";
        prioridad = "Alta";
    }
    else if (horario == 'n' || horario == 'N') {
        estado = "No puede ingresar";
        motivo = "No pertenece al horario actual";
        prioridad = "Alta";
    }
    else if (faltas >= 5) {
        estado = "No puede ingresar";
        motivo = "Tiene 5 o mas faltas acumuladas";
        prioridad = "Alta";
    }
    else if (minutosTarde > 10) {
        estado = "No puede ingresar";
        motivo = "Llego con mas de 10 minutos tarde";
        prioridad = "Alta";
    }
    else if (faltas >= 3) {
        estado = "Ingresa con advertencia";
        motivo = "Tiene 3 o mas faltas acumuladas";
        prioridad = "Media";
    }
    else if (minutosTarde > 0 && minutosTarde <= 10) {
        estado = "Ingresa con advertencia";
        motivo = "Llego tarde, pero dentro de los 10 minutos";
        prioridad = "Media";
    }

    cout << "\n ===RESULTADO===\n";
    cout << "Estado final: " << estado << "\n";
    cout << "Motivo: " << motivo << "\n";
    cout << "Prioridad: " << prioridad << "\n";

    return 0;
}

