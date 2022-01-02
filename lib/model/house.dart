class House {
  String name;
  String address;
  String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateRecommended() {
    return [
      House('House', 'Model School Road, Gopalganj',
          'assets/images/house01.jpg'),
      House('Best House', 'Bottala, Gopalganj',
          'assets/images/house02.jpg'),
    ];
  }

  static List<House> generateBestOffer() {
    return [
      House('House', 'Model School Road, Gopalganj',
          'assets/images/offer01.jpg'),
      House('Best House', 'Bottala, Gopalganj',
          'assets/images/offer02.jpg'),
    ];
  }
}
