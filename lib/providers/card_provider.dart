import 'package:food_app_v1/dto/product.dart';

class CardProvider {
  List<Product> productsInCard = [];

  void addProduct(Product product) {
    productsInCard.add(product);
  }

  void removeProduct(Product product) {
    productsInCard.remove(product);
  }

  double get getTotalPrice {
    double total = 0;
    for (var product in productsInCard) {
      total += product.price;
    }
    return total;
  }

}
