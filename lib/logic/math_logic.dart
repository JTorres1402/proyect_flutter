import 'dart:math';

class MCDMCM {
  int? num1;
  int? num2;

  // ignore: non_constant_identifier_names
  static int MCD(int a, int b) {
    int temporal; //Para no perder b
    while (b != 0) {
      temporal = b;
      b = a % b;
      a = temporal;
    }
    return a;
  }

  num get mcd {
    if (num1 == null || num2 == null) {
      return 0;
    } else {
      int a = min(num1!, num2!);
      int b = max(num1!, num2!);

      int resultado = 0;
      do {
        resultado = b;
        b = a % b;
        a = resultado;
      } while (b != 0);
      return resultado;
    }
  }

  num get mcm {
    if (num1 == null || num2 == null) {
      return 0;
    } else {
      int a = num1!;
      int b = num2!;
      return (num1! * num2!) / MCD(a, b);
    }
  }
}

List<int> fibo = [];

fibonacci(int n) {
  int n1 = 0, n2 = 1, r;
  if (n > 0 || n != 0) {
    fibo.add(n1);
    fibo.add(n2);
  } else {
    fibo.add(0);
  }
  for (var i = 2; i < n; i++) {
    r = n1 + n2;
    fibo.add(r);
    n1 = n2;
    n2 = r;
  }
}

double ecuX1 = 0, ecuX2 = 0;
ecuacion(int a, int b, double c) {
  double potencia, x1, x2, r;
  int a2;
  potencia = pow(b, 2) - (4 * a * c);
  a2 = (2 * a);
  r = sqrt(potencia);
  x1 = ((-b + r) / a2);
  x2 = ((-b - r) / a2);

  ecuX1 = x1;
  ecuX2 = x2;
}
