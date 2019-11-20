class CampainModel {
  CampainModel({
    this.image,
    this.productype,
    this.productName,
    this.price,
    this.stock = 100,
    this.solded = 45,
    this.offerCountDown = 2,
  });

  String image;
  String productype;
  String productName;
  String price;
  int stock;
  int solded;
  int offerCountDown;
}
