class PlacesModel {
  final String imagePath;
  final String placeName;

  PlacesModel({required this.imagePath, required this.placeName});
  
}

List<PlacesModel> placesList = [
  PlacesModel(imagePath: "assets/places/beach.png", placeName: "Beach"),
  PlacesModel(imagePath: "assets/places/city.png", placeName: "City"),
  PlacesModel(imagePath: "assets/places/desert.png", placeName: "Desert"),
  PlacesModel(imagePath: "assets/places/forest.png", placeName: "Forest"),
  PlacesModel(imagePath: "assets/places/mountain.png", placeName: "Mountain"),
];