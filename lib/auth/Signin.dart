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
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Image.asset(
                    'asset/images/alridabgn.png',
                    width: Width * 0.45,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: Height * .6,
                  width: Width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      // color: Colors.blueAccent,
                      border: Border.all(width: 2)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 40,
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
                                      fontSize: 20,
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
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xffe97427)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xffe97427)),
                                  ),
                                  hintText: 'Enter your Email',
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                            SizedBox(height: 20,),

                            Row(
                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                      fontSize: 20,
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
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: IconButton(
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
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xffe97427)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 4, color: Color(0xffe97427)),
                                  ),
                                  hintText: 'Enter your password',
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                            SizedBox(height: 60,),
                            SizedBox(
                              height: 60,
                              width: Width*0.3,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add your button onPressed logic here
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black, // Background color
                                  foregroundColor: Colors.white, // Text color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0), // Rectangular border radius
                                  ),
                                ),
                                child: Text('Sign In',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
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
              width: 100,
            ) //imp
          ],
        ),
      ),
    );
  }
}
