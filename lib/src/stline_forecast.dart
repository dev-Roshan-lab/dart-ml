dynamic stline_forecast(var x, var y, var year) {
  int length = x.length;
  var sumY = 0;
  var sumX = 0;
  var sumXSquare = 0;
  var sumXY = 0;
  var a;
  var b;
  int medianValue = x.length.isOdd
      ? x[(length - 1) ~/ 2]
      : (x[(length / 2) - 1] + x[(length / 2)]) / 2;

  for (var i = 0; i < length; i++) {
    sumY = sumY + y[i] as int;
  }

  for (var y = 0; y < length; y++) {
    sumX = sumX + calculateX(x[y] as int, medianValue) as int;
  }

  for (var p = 0; p < length; p++) {
    sumXSquare = sumXSquare +
        calculateXSquare(calculateX(x[p] as int, medianValue)) as int;
  }

  for (var z = 0; z < length; z++) {
    sumXY = sumXY + calculateXY(calculateX(x[z], medianValue), y[z]) as int;
  }

  a = calculatea(sumY, length);
  b = calculateb(sumXY, sumXSquare);
  return (a + b * calculateX(year, medianValue));
}

dynamic calculateX(var x, var medianValue) {
  return x - medianValue;
}

dynamic calculateXSquare(var x) {
  return x * x;
}

dynamic calculateXY(var x, var y) {
  return x * y;
}

double calculatea(var sumY, var length) {
  return sumY / length;
}

double calculateb(var sumXY, var sumXSquare) {
  return sumXY / sumXSquare;
}
