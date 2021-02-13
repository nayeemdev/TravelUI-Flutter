class BlogModel {
  String name;
  String description;
  String place;
  String image;

  BlogModel(this.name, this.description, this.place, this.image );
}

List<BlogModel> blogs = blogsData.map((item) => BlogModel(item['name'], item['description'], item['place'], item['image'])).toList();

var blogsData = [
  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },  {
    'name': 'Tokyo Tour',
    'content': 'Surya, a massive Asian elephant, can hear, his lanky, soft-spoken mahout of over 14 years, long before he enters the single',
    'place': 'Tokyo',
    'image': 'https://i.pinimg.com/736x/ae/bc/91/aebc910ad397daa244792922b1917d25.jpg',
  },
];