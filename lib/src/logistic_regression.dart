import 'dart:math';

double predict(var row, var coffecients) {
  var yhat = coffecients[0];
  for (int i = 0; i < row.length - 1; i++) {
    yhat += coffecients[i + 1] * row[i];
  }
  return 1.0 / (1.0 + exp(-yhat));
}

findCoeff(var train, l_rate, n_epoch) {
  List coeff = [];
  for (int i = 0; i < train[0].length; i++) {
    //generator function
    coeff.add(0.0);
  }

  for (int i = 0; i < n_epoch; i++) {
    for (int y = 0; y < train.length - 1; y++) {
      var yhat = predict(train[y], coeff);
      List temp = train[y];
      var error = train[y][temp.length - 1] - yhat;
      coeff[0] = coeff[0] + l_rate * error * yhat * (1.0 - yhat);
      for (int z = 0; z < train[y].length - 1; z++) {
        coeff[z + 1] =
            coeff[z + 1] + l_rate * error * yhat * (1.0 - yhat) * train[y][z];
      }
    }
  }
  return coeff;
}

logreg(var train, var test, l_rate, n_epoch) {
  var coeff = findCoeff(train, l_rate, n_epoch);
  var yhat = predict(test, coeff);
  return yhat;
}
