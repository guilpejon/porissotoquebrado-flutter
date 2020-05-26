class Category {
  final int id;
  final String name;
  final String description;
  final String thumbnail;

  Category({
    this.id,
    this.name,
    this.description,
    this.thumbnail,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      thumbnail: json["thumbnail"],
    );
  }
}
