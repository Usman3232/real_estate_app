class RecentlyAndFavouriteModel {
  final String title, location, image;
  final int price;
  bool checkstatus;

  RecentlyAndFavouriteModel({
    this.checkstatus = false,
    required this.title,
    required this.location,
    required this.image,
    required this.price,
  });
}

List<RecentlyAndFavouriteModel> recentlyandfavourite_model = [
  RecentlyAndFavouriteModel(
    image: 'assets/images/furnishedhome1.jpg',
    title: 'Mighty Cinco Family',
    location: 'Jakarta, Indonesia',
    price: 436,
  ),
  RecentlyAndFavouriteModel(
    image: 'assets/images/furnishedhome2.jpg',
    title: 'Mighty Cinco Family',
    location: 'Jakarta, Indonesia',
    price: 765,
  ),
  RecentlyAndFavouriteModel(
    image: 'assets/images/furnishedhome3.jpg',
    title: 'Mighty Cinco Family',
    location: 'Jakarta, Indonesia',
    price: 234,
  ),
];
