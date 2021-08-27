class Chairs {
  String name, image;
  int price;
  Chairs({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<Chairs> chairsdetails = [
  chair1,
  chair2,
  chair3,
  chair4,
];
Chairs chair1 = Chairs(
    image: "assets/Products/Sofa1.png", name: "Classical Chair", price: 3800);
Chairs chair2 =
    Chairs(image: "assets/Products/Sofa2.png", name: "Deck Chair", price: 2500);

Chairs chair3 = Chairs(
    image: "assets/Products/premiumSofa.jpg",
    name: "Premium Chair",
    price: 4300);
Chairs chair4 = Chairs(
    image: "assets/Products/Sofa1.png", name: "Classical Chair", price: 3800);
