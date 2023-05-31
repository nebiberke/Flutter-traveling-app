class RecommendationModel {
  final String imagePath;
  final String travelName;
  final String location;
  final String score;

  RecommendationModel( 
      {required this.imagePath,
      required this.travelName,
      required this.location,
      required this.score,});
}

List<RecommendationModel> recomList = [
  RecommendationModel(imagePath: "assets/images/place1.jpg", travelName: "St. Regis Bora Bora", location: "French Polynesia", score: '4.8'),
  RecommendationModel(imagePath: "assets/images/place2.jpg", travelName: "Rialto Bridge", location: "Venice, Italy", score: '4.4'),
  RecommendationModel(imagePath: "assets/images/place3.jpg", travelName: "St. Regis Bora Bora", location: "French Polynesia", score: '4.8'),
  RecommendationModel(imagePath: "assets/images/place4.jpg", travelName: "Rialto Bridge", location: "Venice, Italy", score: '4.4'),
];