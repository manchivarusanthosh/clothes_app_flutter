class Clothes {
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailsUrl;
  Clothes(
      this.title, this.subtitle, this.price, this.imageUrl, this.detailsUrl);
  static List<Clothes> generateClothes() {
    return [
      Clothes(
        'Gucci',
        'Hoodie',
        'Rs.1800',
        'assets/images/arrival1.png',
        ['assets/images/arrival1.png', 'assets/images/detail2.png'],
      ),
      Clothes(
        'Man Coat',
        'Rain Jacket',
        'Rs.2400',
        'assets/images/arrival2.png',
        ['assets/images/arrival2.png', 'assets/images/detail3.png'],
      ),
    ];
  }
}
