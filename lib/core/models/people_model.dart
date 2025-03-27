class PeopleModel {
  int? id;
  String? name;
  String? profilePath;
  String? knownForDepartment;

  //create constructor
  PeopleModel({
    required this.id,
    required this.name,
    required this.profilePath,
    required this.knownForDepartment,
  });

  //Refactoring
  factory PeopleModel.fromJson({required Map<String, dynamic> data}) {
    return PeopleModel(
      id: data['id'].toInt(),
      name: data['name'].toString(),
      profilePath: data['profile_path'].toString(),
      knownForDepartment: data['known_for_department'].toString(),
    );
  }

  //create Map
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "profilePath": profilePath,
      "knownForDepartment": knownForDepartment,
    }
   ;
  }
}
