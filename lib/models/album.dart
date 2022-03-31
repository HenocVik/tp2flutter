// creation of class album
class album {
  final int user_Id;
  final int id;
  final String titre;

  const album
      (
      {
    required this.user_Id,
    required this.id,
    required this.titre,
  });
//mapping
  static List<album> fromJson(List<dynamic> json) {
    return List.generate(json.length, (i) {
      return album(user_Id: json[i]['user_Id'],
        id: json[i]['id'],
        titre: json[i]['titre'],
      );
    });
  }
}