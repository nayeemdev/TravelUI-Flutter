class PopularDestinationModel {
  String name;
  String country;
  String image;

  PopularDestinationModel(this.name, this.country, this.image);
}

List<PopularDestinationModel> destinations = destinationsData.map((item) => PopularDestinationModel(item['name'], item['country'], item['image'] )).toList();

var destinationsData = [
  {'name':'Bali', 'country':'Indonesia', 'image': 'https://udaipurmirror.com/wp-content/uploads/2020/06/flights-from1.png'},
  {'name':'Paris', 'country':'France', 'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg'},
  {'name':'Istanbul', 'country':'Turkey', 'image': 'https://couponrim.com/pic/2018/12/trip-guru-xmas-holiday-discount-voucher-2019.jpg'},
  {'name':'Paris', 'country':'France', 'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg'},
  {'name':'Istanbul', 'country':'Turkey', 'image': 'https://couponrim.com/pic/2018/12/trip-guru-xmas-holiday-discount-voucher-2019.jpg'},
];