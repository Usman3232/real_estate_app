class PastTourModel {
  final String date, status, discription, image, title, location;
  final int price;
  final bool checkstatus;

  PastTourModel(
      {required this.date,
      required this.status,
      this.discription = "",
      required this.image,
      required this.title,
      required this.location,
      required this.price,
      required this.checkstatus});
}

List<PastTourModel> pasttour_model = [
  PastTourModel(
      date: 'Mon,Apr 4,10:00 AM to 10:45 AM',
      status: 'Canceled',
      discription:
          'You can request another tour anytime, if you have questions please contact your agent',
      image: 'assets/images/furnishedhome1.jpg',
      title: 'Mighty Cinco Family',
      location: 'Jakarta, Indonesia',
      price: 436,
      checkstatus: false),
  PastTourModel(
      date: 'Mon,Apr 4,10:00 AM to 10:45 AM',
      status: 'Completed',
      image: 'assets/images/furnishedhome2.jpg',
      title: 'Mighty Cinco Family',
      location: 'Jakarta, Indonesia',
      price: 436,
      checkstatus: true),
  PastTourModel(
      date: 'Mon,Apr 4,10:00 AM to 10:45 AM',
      status: 'Canceled',
      discription:
          'You can request another tour anytime, if you have questions please contact your agent',
      image: 'assets/images/furnishedhome3.jpg',
      title: 'Mighty Cinco Family',
      location: 'Jakarta, Indonesia',
      price: 436,
      checkstatus: false)
];
