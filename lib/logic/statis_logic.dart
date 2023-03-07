import 'dart:math';

List<int> dato = [];

agregar(int datos) {
  dato.add(datos);
}

int rmoda = 0;
double rmedia = 0, rvarianza = 0;

calculo() {
  int sum = 0, moda = 0;
  int maximoNumRepeticiones = 0;
  double media, varianza = 0;
  num sum2;
  for (var i = 0; i < dato.length; i++) {
    sum += dato[i];
    int numRepeticiones = 0;
    for (var j = 0; j < dato.length; j++) {
      if (dato[i] == dato[j]) {
        numRepeticiones++;
      }
      if (numRepeticiones > maximoNumRepeticiones) {
        moda = dato[i];
        maximoNumRepeticiones = numRepeticiones;
      }
    }
  }
  rmoda = moda;
  media = sum / dato.length;
  rmedia = double.parse((media).toStringAsFixed(2));

  for (var i = 0; i < dato.length; i++) {
    sum2 = pow(dato[i] - media, 2);
    varianza += sum2;
  }
  rvarianza = double.parse(((varianza / (dato.length - 1))).toStringAsFixed(2));
}
