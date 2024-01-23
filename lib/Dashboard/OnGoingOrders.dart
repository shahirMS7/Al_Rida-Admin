import 'package:flutter/material.dart';

class OnGoingOrders extends StatelessWidget {
  const OnGoingOrders({super.key});

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
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
                            children: [
                              SizedBox(
                                width: Width * 0.02,
                              ),
                              Text(
                                'On Going orders',
                                style: TextStyle(
                                    fontSize: Height * 0.04,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                              height: Height * 0.8,
                              width: Width * 0.75,
                              child: ListView.separated(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Height * 0.05),
                                  scrollDirection: Axis.vertical,
                                  itemCount: 1,
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                          height: Height *
                                              0.001), // Add a gap between items
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.all(Width * 0.02),
                                      height: Height * 0.3,
                                      width: Width * 0.1,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(Width * 0.01),
                                        border: Border.all(),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: Height * 0.01,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: Width * 0.01,
                                              ),
                                              Text(
                                                '5 min ago',
                                                style: TextStyle(
                                                  fontSize: Height * 0.015,
                                                  color: Color(0xff911f2a),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(children: [
                                            SizedBox(
                                              width: Width * 0.01,
                                            ),
                                            Text(
                                              'Order No:',
                                              style: TextStyle(
                                                  fontSize: Height * 0.02),
                                            ),
                                            SizedBox(
                                              width: Width * 0.2,
                                            ),
                                            Text('Address',
                                                style: TextStyle(
                                                    fontSize: Height * 0.02)),
                                            SizedBox(
                                              width: Width * 0.01,
                                            ),
                                          ]),
                                          Divider(
                                            height: Height * 0.01,
                                            color: Colors.black,
                                          ),
                                          Container(
                                            height: Height * 0.16,
                                            decoration: BoxDecoration(
                                                // color: Colors.blueAccent,
                                                ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: Width * 0.01,
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                            'No',
                                                            style: TextStyle(
                                                              fontSize:
                                                                  Height * 0.02,
                                                            ),
                                                          ),
                                                          Text('1',style: TextStyle(
                                                            fontSize: Height*0.02,
                                                          ),),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: Width * 0.025,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            'Item',
                                                            style: TextStyle(
                                                              fontSize:
                                                                  Height * 0.02,
                                                            ),
                                                          ),
                                                          Text('Fried Combo',style: TextStyle(
                                                            fontSize: Height*0.02,
                                                          ),),
                                                        ],
                                                      ),

                                                      SizedBox(
                                                        width: Width * 0.19,
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                            "Tirur-2 \n"
                                                            "mattummal complex\n"
                                                            "flat no:121",
                                                            style: TextStyle(
                                                              fontSize:
                                                                  Height * 0.02,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),

                                                ],
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            height: Height * 0.02,
                                            color: Colors.black,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              // SizedBox(width: Width*0.01,),
                                              SizedBox(
                                                height: Height * 0.04,
                                                width: Width * 0.12,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    // Add your button click logic here
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: Color(
                                                        0xff911f2a), // Background color of the button
                                                    foregroundColor: Colors
                                                        .white, // Text color
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(Height *
                                                              0.01), // Adjust the border radius as needed
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Reject',
                                                    style: TextStyle(
                                                      fontSize: Height * 0.02,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: Height * 0.04,
                                                width: Width * 0.12,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    // Add your button click logic here
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: Color(
                                                        0xff3C8A3C), // Background color of the button
                                                    foregroundColor: Colors
                                                        .white, // Text color
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(Height *
                                                              0.01), // Adjust the border radius as needed
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Accept',
                                                    style: TextStyle(
                                                      fontSize: Height * 0.02,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: Height * 0.04,
                                                width: Width * 0.12,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    // Add your button click logic here
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .blueAccent
                                                        .shade400, // Background color of the button
                                                    foregroundColor: Colors
                                                        .white, // Text color
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(Height *
                                                              0.01), // Adjust the border radius as needed
                                                    ),
                                                  ),
                                                  child: Text(
                                                    'Assign',
                                                    style: TextStyle(
                                                      fontSize: Height * 0.02,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  })),
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
