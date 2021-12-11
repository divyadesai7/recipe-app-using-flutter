class Recipe {
  String id;
  String title;
  String type;
  int prepTime;
  String image;

  Recipe({
    required this.id,
    required this.title,
    required this.type,
    required this.prepTime,
    required this.image,
  });

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
      id: json['_id'],
      title: json['title'],
      type: json['type'],
      prepTime: json['prepTime'],
      image: json['image'],
    );
  }
}
