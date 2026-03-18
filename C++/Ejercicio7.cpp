#include <iostream>
#include <string>

using namespace std;

int main() {
    float lecturaAnterior, lecturaActual, consumo, consumoPorHabitante;
    int habitantes;
    float costoBase = 0, recargo = 0, subsidio = 0, total = 0;
    char tipoVivienda, artefactos, deuda;
    string alerta1 = "Consumo por habitante normal.";
    string alerta2 = "Sin riesgo de sobrefacturacion por artefactos.";

    cout << "================== EVALUADOR DE CONSUMO ELECTRICO ============\n";
    cout << "Ingrese la lectura anterior (kWh): ";
    cin >> lecturaAnterior;
    cout << "Ingrese la lectura actual (kWh): ";
    cin >> lecturaActual;

    if (lecturaActual < lecturaAnterior) {
        cout << "\nLa lectura actual no puede ser menor a la anterior.\n";
    }
    else {
        cout << "Tipo de vivienda (S = Social, R = Regular): ";
        cin >> tipoVivienda;
        cout << "Numero de habitantes: ";
        cin >> habitantes;
        cout << "Tiene artefactos de alto consumo (s/n): ";
        cin >> artefactos;
        cout << "Tiene deuda anterior (s/n): ";
        cin >> deuda;

        consumo = lecturaActual - lecturaAnterior;

        if (consumo <= 100) {
            costoBase = consumo * 0.10;
        }
        else if (consumo > 100 && consumo <= 200) {
            costoBase = consumo * 0.15;
        }
        else {
            costoBase = consumo * 0.20;
        }

        if (deuda == 's' || deuda == 'S') {
            recargo = costoBase * 0.10;
        }

        if ((tipoVivienda == 'S' || tipoVivienda == 's') && consumo <= 100) {
            subsidio = costoBase * 0.20;
        }

        consumoPorHabitante = consumo / habitantes;

        if (consumoPorHabitante > 50) {
            alerta1 = "ALERTA: Consumo excesivo por habitante";
        }

        if ((artefactos == 's' || artefactos == 'S') && consumo > 200) {
            alerta2 = "RIESGO: Posible sobrefacturacion por artefactos de alto consumo";
        }

        total = costoBase + recargo - subsidio;

        cout << "\n=========== FACTURA DE ELECTRICIDAD =============\n";
        cout << "Consumo total: " << consumo << " kWh\n";
        cout << "Costo base: " << costoBase << "\n";
        cout << "Recargo por deuda: " << recargo << "\n";
        cout << "Subsidio aplicado: " << subsidio << "\n";
        cout << "TOTAL A PAGAR: $" << total << "\n";
        cout << "============= MENSAJES PREVENTIVOS ===============\n";
        cout << alerta1 << "\n";
        cout << alerta2 << "\n";
    }

    return 0;
}

