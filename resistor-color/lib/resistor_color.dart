class ResistorColor {
  // Put your code here
  List<String> colors = [
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
    return colors.indexOf(color);
  }
}
