class SellMyHome {
  final int bath, bed;
  final String areaspace, price, image;

  SellMyHome({
    required this.bath,
    required this.bed,
    required this.areaspace,
    required this.price,
    required this.image,
  });
}

List<SellMyHome> sellmyhome_model = [
  SellMyHome(
    bath: 3,
    bed: 2,
    areaspace: "1,800",
    price: "1,600",
    image: 'assets/images/furnishedhome1.jpg',
  ),
  SellMyHome(
    bath: 5,
    bed: 23,
    areaspace: "1,500",
    price: "1,900",
    image: 'assets/images/furnishedhome2.jpg',
  ),
  SellMyHome(
    bath: 1,
    bed: 3,
    areaspace: "1,100",
    price: "1,200",
    image: 'assets/images/furnishedhome3.jpg',
  ),
];
