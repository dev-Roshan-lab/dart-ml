import 'dart:math';

double euclideanDistance(List row1, List row2) {
  double distance = 0.0;
  for (int i = 0; i < row1.length - 1; i++) {
    distance += pow((row1[i] - row2[i]), 2);
  }
  return sqrt(distance);
}

List sortDistanceList(List distance) {
  //sorts while comparing two items of list
  //compares the distance hence [1] where it access the distance
  distance.sort((a, b) => a[1].compareTo(b[1]));
  return distance;
}

List getNeighbors(List train, List test_row, int num_neighbors) {
  var distances = [];
  for (var i = 0; i < train.length - 1; i++) {
    var train_row = train[i];
    var dist = euclideanDistance(test_row, train_row);
    distances.add([train_row, dist]);
  }
  //sorting the while comparing the euclidean of the test_row and the train data
  var sorted_distance = sortDistanceList(distances);
  var neighbors = [];
  for (var i = 0; i < num_neighbors; i++) {
    neighbors.add(sorted_distance[i][0]);
  }
  return neighbors;
}

Map findPopularElement(List output) {
  var map = Map();

  output.forEach((element) {
    if (!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });
  return map;
}

dynamic knn(var train, var test_row, num_neighbors) {
  var neighbors = getNeighbors(train, test_row, num_neighbors);
  var output_values = [];
  for (var i = 0; i < neighbors.length; i++) {
    output_values.add((neighbors[i]).last);
  }
  var prediction = findPopularElement(
      output_values); //TODO: find the most popular element in a list from the above function
  return prediction;
}
