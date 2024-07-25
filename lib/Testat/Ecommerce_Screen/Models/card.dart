class Cards {
  String image;
  String name;
  int price;
  Cards({required this.image, required this.name, required this.price});
}

List<Cards> Cardslist = [
  Cards(image: "assets/images/c1.webp", name: "Fila", price: 130),
  Cards(image: "assets/images/c3.webp", name: "Cr7", price: 136),
  Cards(image: "assets/images/un (1).jpg", name: "nike", price: 99),
  Cards(image: "assets/images/bag_1.png", name: "Milano", price: 88),
  Cards(image: "assets/images/signUp_light.png", name: "Adidas", price: 50),
  Cards(image: "assets/images/login_light.png", name: "Puma", price: 124),
];
