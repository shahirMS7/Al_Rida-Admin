import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpOffer extends StatelessWidget {
  const SpOffer({super.key});
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    List<Map<String, dynamic>> items = [
      {
        'title': 'Special Offer',
        'image': 'asset/icons/special-offer.png',
        // 'page': SpOffer()
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
        child: Column(
          children: [
            SizedBox(
              height: Height * 0.05,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: Height * 0.08,
                      width: Width * 0.08,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF6AF40),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: ImageIcon(
                            AssetImage('asset/icons/left.png'),
                            size: Height * 0.06,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Height * 0.8,
                    )
                  ],
                ),
                SizedBox(
                  width: Width * 0.08,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: Height * 0.9,
                      width: Width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Width * 0.015),
                          border: Border.all(),
                          color: Colors.white.withOpacity(0.25)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Height * 0.03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: Width * 0.02,
                              ),
                              Text(
                                'Add or Remove item',
                                style: TextStyle(
                                    fontSize: Height * 0.04,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              SizedBox(
                                height: Height * 0.05,
                                width: Width * 0.07,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your button click logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent
                                        .shade400, // Background color of the button
                                    foregroundColor: Colors.white, // Text color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(Height *
                                          0.01), // Adjust the border radius as needed
                                    ),
                                  ),
                                  child: Text(
                                    'Update',
                                    style: TextStyle(
                                      fontSize: Height * 0.02,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: Width * 0.02,
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.all(
                                Width * 0.02,
                              ),
                              height: Height * 0.7,
                              width: Width * 0.8,
                              // color: Colors.greenAccent,
                              child: GridView.builder(
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 60,
                                  mainAxisSpacing: 60,
                                  childAspectRatio: 7.5 / 5,
                                ),
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                            items[index]['page'],
                                          ));
                                    },
                                    child:
                                      Container(

                                        margin: EdgeInsets.all(Height*0.005),
                                        height: Height*0.2,
                                        width: Width*0.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(Width*0.01),
                                          border: Border.all(),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.all(Height*0.04),
                                              height: Height*0.18,
                                              width: Width*0.2,
                                              decoration: BoxDecoration(
                                                border: Border.all(),
                                                borderRadius: BorderRadius.circular(Width*0.01),
                                                color: Colors.greenAccent
                                              ),
                                            ),
                                            Text('Grilled Chicken',style: TextStyle(fontSize: Height*0.025,fontWeight: FontWeight.bold))
                                          ],
                                        ),
                                      )
                                    // Container(
                                    //   decoration: BoxDecoration(
                                    //     borderRadius:
                                    //     BorderRadius.circular(10),
                                    //     color: Colors.white,
                                    //     border: Border.all(),
                                    //     image: DecorationImage(
                                    //         image: AssetImage(
                                    //             items[index]['image']
                                    //         ),
                                    //
                                    //         fit: BoxFit.none),
                                    //   ),
                                    //   child:  Align(
                                    //     alignment: Alignment.bottomCenter,
                                    //     child: Text(
                                    //       items[index]['title'],
                                    //       style: TextStyle(
                                    //         fontWeight: FontWeight.bold,
                                    //         fontSize: Width * 0.015,
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  );
                                },
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Height * 0.01,
                    )
                  ],
                ),
                SizedBox(
                  width: Width * 0.005,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
