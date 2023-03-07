import 'dart:math';

double resparabolico = 0;
num resfuerza = 0;
List<int> resistencia = [];
double ic = 0;

parabolico(int velocidad, int angulo) {
  double dis, radian;
  radian = angulo * pi / 180;
  dis = (pow(velocidad, 2) * (sin(radian * 2))) / 9.8;
  resparabolico = double.parse((dis).toStringAsFixed(2));
}

intensidad(int v) {
  int sum = 0;
  double i;
  for (var i = 0; i < resistencia.length; i++) {
    sum += resistencia[i];
  }
  i = v / sum;
  ic = double.parse((i).toStringAsFixed(2));
}

fuerza(num masa, num aceleracion) {
  num F;
  F = masa * aceleracion;
  resfuerza = F;
}
