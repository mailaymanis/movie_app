class MovieModel {
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  String? posterPath;
  String? releaseDate;
  String? title;
  double? popularity;
  double? voteAverage;
  int? voteCount;

  //create constructor
  MovieModel({
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.popularity,
    required this.voteAverage,
    required this.voteCount,
  });

  //Refactoring
  factory MovieModel.fromJson({required Map<String, dynamic> data}) {
    return MovieModel(
      id: data["id"].toInt(),
      originalLanguage: data["original_language"],
      originalTitle: data["original_title"],
      overview: data["overview"],
      posterPath: data["poster_path"],
      releaseDate: data["release_date"],
      title: data["title"],
      popularity: data["popularity"].toDouble(),
      voteAverage: data["vote_average"].toDouble(),
      voteCount: data["vote_count"].toInt(),
    );
  }

  //create Map
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "originalLanguage": originalLanguage,
      "originalTitle": originalTitle,
      "overview": overview,
      "posterPath": posterPath,
      "releaseDate": releaseDate,
      "title": title,
      "popularity": popularity,
      "voteAverage": voteAverage,
      "voteCount": voteCount,
    };
  }
}
