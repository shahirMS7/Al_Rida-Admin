import 'package:admin/Dashboard/OnGoingOrders.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    List<Map<String, dynamic>> items = [
      {
        'title': 'On Going Orders',
        'image': 'asset/images/on going.jpg',
        'page': OnGoingOrders()
      },
      {
        'title': 'Edit Item',
        'image': 'asset/images/edit item.jpg',
        'page': OnGoingOrders()
      },
      {
        'title': 'Users List',
        'image': 'asset/images/userlist.jpg',
        'page': OnGoingOrders()
      },
      {
        'title': 'Completed List',
        'image': 'asset/images/cmpled food orders.jpg',
        'page': OnGoingOrders()
      },
      {
        'title': 'My Shop',
        'image': 'asset/images/myshop.jpg',
        'page': OnGoingOrders()
      },
      {
        'title': 'Delivery Boy',
        'image': 'asset/images/delivery boy.jpg',
        'page': OnGoingOrders()
      },
    ];
    return Scaffold(
        body: Container(
            height: Height,
            width: Width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'asset/images/background.png',
                    ),
                    fit: BoxFit.cover)),
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dashboard',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: IconButton(
                              onPressed: () {},
                              icon: ImageIcon(
                                AssetImage(
                                  'asset/icons/bell.png',
                                ),
                                color: Colors.white,
                              )))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 2,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: Height * 0.75,
                    width: Width * 0.95,
                    // color: Colors.greenAccent.shade100,
                    child: Container(
                        child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 30 ,
                        mainAxisSpacing: 30,
                        childAspectRatio: 6 / 3.3,
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => items[index]['page'],
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage(
                                    items[index]['image'],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                items[index]['title'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Width * 0.015,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                        //             GridView.builder(
                        //                 gridDelegate:
                        //                     SliverGridDelegateWithFixedCrossAxisCount(
                        //                         crossAxisCount: 3,
                        //                         crossAxisSpacing: 20,
                        //                         mainAxisSpacing: 20,
                        //                         childAspectRatio: 6 / 3.4),
                        //                 children: [

                        //
                        //   ],
                        // ),
                        ),
                  )
                ]))));
  }
}
