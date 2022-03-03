// ignore_for_file: non_constant_identifier_names

import 'dart:math';

double stline_forecast(int year, List dataset) {
  // sum of y for coefA
  double sum = 0;
  for (int i = 0; i < dataset.length; i++) {
    sum += dataset[i][1];
  }

  // find mid element to subtract from year in each iteration
  int midElement = dataset[dataset.length ~/ 2][0];

  // sum of xy for coefB
  double XY = 0;
  dataset.forEach((element) {
    XY += (element[0] - midElement) * element[1];
  });

  // sum of x^2 for coefB
  double XSquare = 0;
  dataset.forEach((element) {
    XSquare += pow(element[0] - midElement, 2);
  });

  double y =
      coefA(sum, dataset.length) + (coefB(XY, XSquare) * (year - midElement));
  return y;
}

double coefA(double y, int N) {
  double a = y / N;
  return a;
}

double coefB(double XY, double XSquare) {
  double b = XY / XSquare;
  return b;
}
