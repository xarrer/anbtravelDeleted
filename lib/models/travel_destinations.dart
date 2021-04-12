class TravelDestinations {
  final String city;
  final String image;

  TravelDestinations({
    this.city,
    this.image,
  });
}

List<TravelDestinations> destinations = [
  TravelDestinations(
    city: 'Bali',
    image: 'assets/images/bali.jpg',
  ),
  TravelDestinations(
    city: 'Singapore',
    image: 'assets/images/singapore.jpg',
  ),
  TravelDestinations(
    city: 'Malaysia',
    image: 'assets/images/malaysia.jpg',
  ),
  TravelDestinations(
    city: 'Santorini',
    image: 'assets/images/santorini.jpg',
  ),
];
