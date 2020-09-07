class ResistorColor {
  // Put your code here
  List<String> colorMap = [
    "Black",
    "Brown",
    "Red",
    "Orange",
    "Yellow",
    "Green",
    "Blue",
    "Violet",
    "Grey",
    "White",
  ];

  int colorCode(String color) {
    return colorMap.indexOf(color);
  }
}
