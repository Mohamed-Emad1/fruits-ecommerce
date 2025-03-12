num getAverageRating(json) {
  if (json == null) {
    return 0;
  }
  var sum = 0.0;
  for (var i = 0; i < json.length; i++) {
    sum += json[i]["rating"];
  }
  return sum / json.length;
}
