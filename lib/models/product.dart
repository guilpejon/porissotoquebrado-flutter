class Product {
  final int id;
  final String name;
  final String description;
  final int favorites_count;
  final String store;
  final String thumbnail;
  final String affiliate_link;
  final String price;
  final List images;

  Product({
    this.id,
    this.name,
    this.description,
    this.favorites_count,
    this.store,
    this.thumbnail,
    this.affiliate_link,
    this.price,
    this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      favorites_count: json["favorites_count"],
      store: json["store"],
      thumbnail: json["thumbnail"],
      affiliate_link: json["affiliate_link"],
      price: json["price"],
      images: json["images"],
    );
  }
}
