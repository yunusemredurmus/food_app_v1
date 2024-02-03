import 'package:flutter/material.dart';
import 'package:food_app_v1/constant/app_constant.dart';
import 'package:food_app_v1/dto/product.dart';
import 'package:food_app_v1/screens/prodcut_detail_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/images/Pattern.png'),
              width: double.infinity,
              fit: BoxFit.cover,
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu_outlined,
                    size: 30,
                  ),
                  Icon(Icons.person_outline, size: 30),
                ],
              ),
            ),
            const SizedBox(
              width: 311,
              height: 36,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Search",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Color.fromARGB(255, 233, 225, 225),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 233, 225, 225),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: AssetImage('assets/images/menu.png'),
                width: 350,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 41,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildMenuItem(
                    Icons.food_bank,
                    'Yemek',
                    0,
                  ),
                  _buildMenuItem(Icons.local_pizza, 'Pizza', 1),
                  _buildMenuItem(Icons.local_drink, 'Drink', 2),
                  _buildMenuItem(Icons.dangerous, 'Hot Dog', 3),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 310,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Product product = AppConstant.products[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailPage(product: product),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            height: 30,
                            child: Row(
                              children: [
                                const Icon(Icons.star, color: Colors.orange),
                                Text(product.rating.toString()),
                              ],
                            ),
                          ),
                          ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            child: Image.network(
                              product.image,
                              width: 250,
                              height: 150,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            product.description,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$${product.price}',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    right: 8,
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: AppConstant.products.length,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const SizedBox(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Populer Meal Menu",
                    style: TextStyle(fontSize: 17),
                  ),
                  Row(
                    children: [
                      Text("See All", style: TextStyle(fontSize: 17)),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: AppConstant.products.length,
              itemBuilder: (context, index) {
                Product product = AppConstant.products[index];

                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(product: product),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            product.image,
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                          Column(
                            children: [
                              Text(product.name),
                              Text(product.description),
                            ],
                          ),
                          Text(
                            '\$${product.price}',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                        ]),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label, int itemIndex) {
    bool isSelected = index == itemIndex;

    return GestureDetector(
      onTap: () {
        setState(() {
          index = itemIndex;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        margin: const EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red[500] : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.red : Colors.grey.withOpacity(0.3),
          ),
        ),
        height: 41,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Icon(
              icon,
              size: 30,
            ),
            const SizedBox(height: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
