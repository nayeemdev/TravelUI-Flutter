class SliderModel {
  String image;

  SliderModel(this.image);
}

List<SliderModel> sliders = slidersData.map((item) => SliderModel(item['image'])).toList();

var slidersData = [
  {'image': 'https://udaipurmirror.com/wp-content/uploads/2020/06/flights-from1.png'},
  {'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg'},
  {'image': 'https://couponrim.com/pic/2018/12/trip-guru-xmas-holiday-discount-voucher-2019.jpg'},
];