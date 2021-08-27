class Clothes {
  String name, image;
  int price;
  bool sale;
  int saleprice;
  Clothes({
    required this.image,
    required this.name,
    required this.price,
    required this.sale,
    required this.saleprice,
  });
}

List<Clothes> clothesdetails = [product1, product2];
Clothes product1 = Clothes(
  image: "assets/Products/clothes1.jpg",
  name: "Scotch Premium",
  price: 1600,
  sale: true,
  saleprice: 1200,
);
Clothes product2 = Clothes(
  image: "assets/Products/clothes2.jpg",
  name: "Special Shirt's",
  price: 1200,
  sale: true,
  saleprice: 800,
);
