class CatalogModal {
  static List<Item> items = [
    Item(
        id: 1,
        name: "The Chef King",
        rating: 5,
        comment: "The best Sushi Available here!",
        image_url:
            "https://www.elitetraveler.com/wp-content/uploads/2017/10/Hotel-Eden-La-Terrazza-scaled-e1600071873644.jpg"),
  ];
}

class Item {
  final num id;
  final String name;
  final num rating;
  final String image_url;
  final String comment;

  Item({
    required this.id,
    required this.name,
    required this.rating,
    required this.image_url,
    required this.comment,
  });

  factory Item.fromMap(Map<String, dynamic> map) => Item(
      id: map["id"],
      name: map["name"],
      rating: map["rating"],
      image_url: map["image_url"],
      comment: map["comment"]);

  // toMap() => {
  //   "id" = id,
  //   "name" = name,
  //   "rating" = rating,
  //   "image_url" = image_url,
  //   "comment" = comment
  // };
}
