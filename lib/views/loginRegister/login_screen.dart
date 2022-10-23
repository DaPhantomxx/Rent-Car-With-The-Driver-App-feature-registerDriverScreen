import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[

                SizedBox(height: 120,),

                Text(
                  "APP NAME",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontFamily: 'Brand_Bold'),
                ),

                SizedBox(height: 120,),

                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'Email address',
                        labelStyle: TextStyle(fontSize: 20.0),
                      ),
                    ),

                      SizedBox(height: 5,),

                      TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 20.0),
                      ),
                    ),

                      SizedBox(height: 20,),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          //padding: EdgeInsets.all(20.0),
                        ),
                        onPressed: () {},
                        child: Container(
                            height: 50,
                            child: Center(
                              child: Text(
                                'LOGIN',
                                  style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {},
                        child: Text('Forgot Password?'),
                      ),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                              child: Divider(
                                color: Colors.black,
                                thickness: 1,
                                height: 40,
                              ),
                            ),
                          ),

                          Text(
                            "OR",
                            style: TextStyle(fontSize: 20.0),
                          ),

                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                              child: Divider(
                                color: Colors.black,
                                thickness: 1,
                                height: 40,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Register as Customer",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            onPressed: () {},
                            child: Text(
                              "Register as Driver",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}