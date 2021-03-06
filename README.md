# dart_ml

## Introduce machine learning to your dart supported apps from Android till Linux

[![Pub Version](https://img.shields.io/pub/v/dart_ml?logo=dart&logoColor=white)](https://pub.dev/packages/dart_ml/)
[![Pub Likes](https://badgen.net/pub/likes/dart_ml?label=pub%20likes)](https://pub.dev/packages/dart_ml/score)
[![Pub Points](https://badgen.net/pub/points/dart_ml?label=pub%20points)](https://pub.dev/packages/dart_ml/score)
[![Pub Popularity](https://badgen.net/pub/popularity/dart_ml?label=pub%20popularity)](https://pub.dev/packages/dart_ml/score)
[![Flutter Platform](https://badgen.net/pub/flutter-platform/dart_ml)](https://pub.dev/packages/dart_ml/)

## Contents
- #### Algorithms
    - ##### Classification
        - [K-Nearest-Neigbor](https://github.com/dev-Roshan-lab/dart-ml/blob/main/lib/src/knn.dart) In statistics, the k-nearest neighbors algorithm (k-NN) is a non-parametric classification method
        - [Logistic Regressor](https://github.com/dev-Roshan-lab/dart-ml/blob/main/lib/src/logistic_regression.dart) Logistic regression is a supervised learning classification algorithm generally used where we have to classify the data into two or more classes
	- ##### Forecasting
		- [Fit straight line](https://github.com/dev-Roshan-lab/dart-ml/blob/main/lib/src/stline_forecast.dart) A statistical approach towards forecasting, where a straight line is fit on the data to perform future predictions
    - ##### Regression
        - ###### Coming soon!

## Example
### Import package
```dart
    import 'package:dart_ml/dart_ml.dart';
```

### Load dataset
```dart
    //Minimal dataset where each columns define the feature and the last row is the target class
    var dataset = [
               [2.7810836, 2.550537003, 0],
               [1.465489372, 2.362125076, 0],
               [3.396561688, 4.400293529, 0],
               [1.38807019, 1.850220317, 0],
               [3.06407232, 3.005305973, 0],
               [7.627531214, 2.759262235, 1],
               [5.332441248, 2.088626775, 1],
               [6.922596716, 1.77106367, 1],
               [8.675418651, -0.242068655, 1],
               [7.673756466, 3.508563011, 1]
                    ];

```

### Using KNN algorithm
```dart
    var predicted = knn(dataset, dataset[0], 3); // (train, test, num_neighbors)
    print(predicted); //{0:5} 0 is the target class and 5 is the num of neigbors of the same class that is 0
```

### Using Logistic regression
```dart
    var predicted = logreg(dataset, dataset[0], 0.3, 100)); // (train, test, l_rate, n_epoch)
    print(predicted); //0, returns the predicted class
```

### Using Stline_forecast
```dart
    List dataset = [
	[2011, 80],
	[2012, 90],
	[2013, 92],
	[2014, 83],
	[2015, 94],
	[2016, 99],
	[2017, 92]
    ];
    var predicted = stline_forecast(dataset, 2018); // 98.0 predicted sales for the year 1995
```

### Next Goals
- ?????? Regression Algorithms
- ?????? Neural Networks
- ?????? Model Evaluations
- ?????? Dataset tools

### Contact
If you have questions, feel free to write me on
 - [Linkedin](https://www.linkedin.com/in/skroshan/)
 - [Instagram](https://www.instagram.com/skroshan.me/)
