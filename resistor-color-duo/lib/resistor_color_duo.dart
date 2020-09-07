class ResistorColorDuo {
  List<String> colorMap = [
    "black",
    "brown",
    "Red",
    "Orange",
    "Yellow",
    "Green",
    "Blue",
    "Violet",
    "Grey",
    "White",
  ];

  int value(List<String> colors) {
    return colorMap.indexOf(colors[0]) * 10 + colorMap.indexOf(colors[1]);
  }
}
