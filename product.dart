class Product {
  final String id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String imageUrl;
  final double rating;
  final int ratingCount;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageUrl,
    required this.rating,
    required this.ratingCount,
  });

  static List<Product> loadProduct() {
    List<Product> products = [
      Product(
        id: '1', 
        title: 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops', 
        price: 109.95, 
        description: 'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday', 
        category: "men's clothing", 
        imageUrl: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', 
        rating: 3.9, 
        ratingCount: 120
      ),
      Product(
        id: '2',
        title: 'Men Casual Premium Slim Fit T-Shirts',
        price: 22.3,
        description: 'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, lightweight & soft fabric for breathable and comfortable wearing. Solid stitched shirts with round necks are made for durability and an excellent fit for casual fashion wear and diehard baseball fans. The Henley-style round neckline includes a three-button placket.',
        category: "men's clothing",
        imageUrl: 'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
        rating: 4.1,
        ratingCount: 259
      ),
      Product(
        id: '3',
        title: "Men's Cotton Jacket",
        price: 55.99,
        description: "Great outerwear jackets for spring/autumn/winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling, or other outdoor activities. It's a good gift choice for you or your family member. A warm-hearted love to father, husband, or son in this Thanksgiving or Christmas Day.",
        category: "men's clothing",
        imageUrl: 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',
        rating: 4.7,
        ratingCount: 500
      ),
      Product(
        id: '4',
        title: 'Mens Casual Slim Fit',
        price: 15.99,
        description: 'The color could be slightly different between on the screen and in practice. Please note that body builds vary by person, therefore, detailed size information should be reviewed in the product description below.',
        category: "men's clothing",
        imageUrl: 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg',
        rating: 2.1,
        ratingCount: 430
      )
    ];

    return products;
  }
}
