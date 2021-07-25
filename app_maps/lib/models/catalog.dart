class CatalogModal {
  static final products = [
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
}
