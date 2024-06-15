import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:shop_ninja/notification_page.dart';
import 'package:shop_ninja/pages/cart.dart';
import 'package:shop_ninja/pages/messages_list.dart';
import 'package:shop_ninja/pages/show_product_.dart';
import 'package:shop_ninja/profile_management_page.dart';
import 'package:shop_ninja/styles/app_color.dart';
import 'package:shop_ninja/wallet_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(children: [
          RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  children: const <TextSpan>[
                TextSpan(
                    text: 'Shop', style: TextStyle(color: AppColor.secondary)),
                TextSpan(
                    text: 'Ninja', style: TextStyle(color: AppColor.secondary))
              ])),
          Image.asset(
            'assets/images/shopNinjaLogo.png',
            width: 25,
          )
        ]),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.message),
              tooltip: 'Messages',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MessageListPage()));
              })
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.wallet), label: 'Wallet'),
          NavigationDestination(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          NavigationDestination(
              icon: Icon(Icons.manage_accounts), label: 'Profile')
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          _buildHomePage(context),
          WalletPage(),
          NotificationPage(),
          ProfileManagementPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartPage()));
        },
      ),
    );
  }

  Widget _buildHomePage(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(
              leading: const Icon(Icons.search_rounded),
              hintText: 'Search here...',
            ),
            SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ImageSlideshow(
                width: double.infinity,
                height: 200,
                initialPage: 0,
                indicatorColor: AppColor.secondary,
                indicatorBackgroundColor: Colors.grey,
                children: [
                  Image.asset(
                    'assets/images/megaSale.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/appliances.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/apparels.jpg',
                    fit: BoxFit.cover,
                  )
                ],
                onPageChanged: (value) {
                  print('Page changed: $value');
                },
                autoPlayInterval: 3000,
                isLoop: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                mainAxisExtent: 200,
              ),
              itemCount: 16,
              itemBuilder: (BuildContext ctx, index) {
                return _buildProductCard(index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(int index) {
    List<Map<String, String>> products = [
      {
        'image': 'assets/images/product1.jpg',
        'name': 'Lenovo Legion 9i Gen 8',
        'price': '\$3,419'
      },
      {
        'image': 'assets/images/product2.png',
        'name': 'Nike Air Force 1 \'07',
        'price': '\$5,495'
      },
      {
        'image': 'assets/images/product3.jpg',
        'name': 'ASUS BE96U Tri-Band',
        'price': '\$699.99'
      },
      {
        'image': 'assets/images/product4.jpg',
        'name': 'Nike Swoosh T Shirt',
        'price': '\$39.93'
      },
    ];

    var product = products[index % products.length];

    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(
                productName: product['name']!,
                productPrice: product['price']!,
                productImage: product['image']!,
              ),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                product['image']!,
                fit: BoxFit.cover,
                height: 100,
                width: double.infinity,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product['name']!,
                      style: TextStyle(fontSize: 13),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Text(
                      product['price']!,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
