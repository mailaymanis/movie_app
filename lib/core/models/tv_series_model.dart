class TvSeriesModel {
  int? id;
  String? originalName;
  String? overview;
  String? posterPath;
  String? firstAirDate;
  String? name;
  double? popularity;
  double? voteAverage;
  int? voteCount;

  //create constructor
  TvSeriesModel({
    required this.id,
    required this.originalName,
    required this.overview,
    required this.posterPath,
    required this.firstAirDate,
    required this.name,
    required this.popularity,
    required this.voteAverage,
  });

  //Refactoring
  factory TvSeriesModel.fromJson({required Map<String, dynamic> data}) {
    return TvSeriesModel(
      id: data["id"].toInt(),
      originalName: data["original_Name"],
      overview: data["overview"],
      posterPath: data["poster_path"],
      firstAirDate: data["first_air_date"],
      name: data["name"],
      popularity: data["popularity"].toDouble(),
      voteAverage: data["vote_average"].toDouble(),
    );
  }

  //create Map
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "originalName": originalName,
      "overview": overview,
      "posterPath": posterPath,
      "releaseDate": firstAirDate,
      "name": name,
      "popularity": popularity,
      "voteAverage": voteAverage,

    };
  }
}
