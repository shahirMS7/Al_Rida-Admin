import 'package:admin/Dashboard/home.dart';
import 'package:admin/kitchen/home.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;
  FocusNode _passwordFocus = FocusNode();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void dispose() {
    _passwordController.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {


    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Height,
        width: Width,
        color: Color(0xff61042b),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){
                      _showOptionsDialog(context);

                    }, icon: Icon(Icons.supervised_user_circle_outlined),iconSize: Height*0.06,color:Color(0xffe97427),),
                    // Spacer(),
                    SizedBox(width: Width*0.4,)
                  ],
                ),
                Image.asset(
                  'asset/images/alridabgn.png',
                  width: Width * 0.45,
                ),
              ],
            ),
            SizedBox(width: Width*0.1,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Width*0.015),
                  height: Height * .6,
                  width: Width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Width*0.005),
                      // color: Colors.blueAccent,
                      border: Border.all(width: 2)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Height*0.01,
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: Height*0.04,
                      ),
                      Container(
                        height: Height * 0.45,
                        width: Width * 0.25,
                        // color: Colors.redAccent,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Email',
                                  style: TextStyle(
                                      fontSize: Height*0.025,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.white),
                              controller: _emailController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2),
                                    borderRadius: BorderRadius.circular(Width*0.005),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Width*0.005),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xffe97427)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Width*0.005),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xffe97427)),
                                  ),
                                  hintText: 'Enter your Email',
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                            SizedBox(height: Height*0.04,),

                            Row(
                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                      fontSize: Height*0.025,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                            TextField(
                              obscureText: _obscureText,
                              style: TextStyle(color: Colors.white),
                              controller: _passwordController,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscureText ? Icons.visibility_off : Icons.visibility,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                        if (_obscureText) {
                                          _passwordFocus.unfocus();
                                        } else {
                                          _passwordFocus.requestFocus();
                                        }
                                      });
                                    },
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2),
                                    borderRadius: BorderRadius.circular(Width*0.005),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Width*0.005),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xffe97427)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(Width*0.005),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xffe97427)),
                                  ),
                                  hintText: 'Enter your password',
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                            SizedBox(height: Height*0.10),
                            SizedBox(
                              height: Height*0.08,
                              width: Width*0.3,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));

                                  // Add your button onPressed logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black, // Background color
                                  foregroundColor: Colors.white, // Text color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(Width*0.005), // Rectangular border radius
                                  ),
                                ),
                                child: Text('Sign In',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Height*0.025
                                ),),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              width:Width*0.1,
            ) //imp
          ],
        ),
      ),
    );
  }
  void _showOptionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select User type'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Admin'),
                onTap: () {
                  // Handle Customer option click
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Kitchen'),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>KitchenHome() ,) );
                  // Handle Delivery Boy option click
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
