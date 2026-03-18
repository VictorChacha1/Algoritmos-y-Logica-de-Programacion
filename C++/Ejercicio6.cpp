#include <iostream>
#include <string>

using namespace std;

int main() {
    int numEstudiantes, tipoTransporte, dias, paganTransporte;
    float costoHospedajeDia, precioPasaje, costoTransporte = 0;
    float costoHospedaje = 0, costoAlimentacion = 0, descuento = 0;
    float totalGeneral = 0, totalEstudiante = 0;
    char alimentacion, descInstitucional, coordinador;
    string recomendacion;

    cout << "========== PLANIFICADOR DE VIAJE =========\n";
    cout << "Numero total de estudiantes: ";
    cin >> numEstudiantes;
    cout << "Tipo de transporte (1: Basico, 2: Premium): ";
    cin >> tipoTransporte;
    cout << "Numero de dias del viaje: ";
    cin >> dias;
    cout << "Costo de hospedaje por dia (por persona): ";
    cin >> costoHospedajeDia;
    cout << "Incluye alimentacion (s/n): ";
    cin >> alimentacion;
    cout << "Tienen descuento institucional (s/n): ";
    cin >> descInstitucional;
    cout << "Uno viaja gratis por ser coordinador (s/n): ";
    cin >> coordinador;

    paganTransporte = numEstudiantes;
    if (coordinador == 's' || coordinador == 'S') {
        paganTransporte = numEstudiantes - 1;
    }

    if (tipoTransporte == 1) {
        precioPasaje = 30.00;
    } else {
        precioPasaje = 50.00;
    }

    if (numEstudiantes > 20) {
        precioPasaje = precioPasaje - 5.00;
    }
    costoTransporte = paganTransporte * precioPasaje;

    costoHospedaje = numEstudiantes * dias * costoHospedajeDia;
    if (dias > 3) {
        costoHospedaje = costoHospedaje * 0.90;
    }

    if (alimentacion == 's' || alimentacion == 'S') {
        costoAlimentacion = numEstudiantes * dias * 15.00;
    }

    totalGeneral = costoTransporte + costoHospedaje + costoAlimentacion;

    if ((descInstitucional == 's' || descInstitucional == 'S') && totalGeneral > 1000.00) {
        descuento = totalGeneral * 0.05;
        totalGeneral = totalGeneral - descuento;
    }

    totalEstudiante = totalGeneral / numEstudiantes;
    if (totalEstudiante > 150.00) {
        recomendacion = "Viaje no recomendable.";
    } else {
        recomendacion = "Viaje recomendable y dentro del presupuesto.";
    }

    cout << "\n=========== PRESUPUESTO DEL VIAJE =================\n";
    cout << "Costo de transporte: " << costoTransporte << "\n";
    cout << "Costo de hospedaje: " << costoHospedaje << "\n";
    cout << "Costo de alimentacion: " << costoAlimentacion << "\n";
    cout << "Descuento institucional: " << descuento << "\n";
    cout << "TOTAL GENERAL: " << totalGeneral << "\n";
    cout << "Total por estudiante: " << totalEstudiante << "\n";
    cout << "Recomendacion: " << recomendacion << "\n";

    return 0;
}

