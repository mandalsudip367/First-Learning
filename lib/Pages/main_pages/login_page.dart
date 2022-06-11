import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilits/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToRegist(BuildContext context) async {
    {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.registRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Pages"),
      ),
      body: SingleChildScrollView(
        child: Material(
          color: Colors.white,
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(padding: EdgeInsetsDirectional.only(start: 0, top: 10)),
                Image.asset(
                  "assets/images/WC.png",
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Username';
                          }
                          return null;
                        },
                        onChanged: (ShowName) {
                          name = ShowName;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Password';
                          } else if (value.length < 6)
                            return "Password Length Should Be Atleast 6 Digits";
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 30 : 8),
                            child: InkWell(
                              onTap: () => moveToHome(context),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: changeButton ? 50 : 120,
                                height: 50,
                                alignment: Alignment.center,
                                child: changeButton
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.white,
                                      )
                                    : Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                // decoration: BoxDecoration(
                                // shape: changeButton
                                //     ? BoxShape.circle
                                //     : BoxShape.rectangle,

                                // color: Colors.deepPurple,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Material(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(
                                    changeButton ? 50 : 10),
                                child: InkWell(
                                  onTap: () => moveToRegist(context),
                                  child: AnimatedContainer(
                                      duration: Duration(seconds: 1),
                                      width: changeButton ? 50 : 120,
                                      height: 50,
                                      alignment: Alignment.center,
                                      child: changeButton
                                          ? Icon(Icons.done,
                                              color: Colors.white)
                                          : Text("Sign Up",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                      // ElevatedButton(
                      //     onPressed: (() {
                      //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //     }),
                      //     child: Text(
                      //       "Login",
                      //     ),
                      //     style: TextButton.styleFrom(
                      //         backgroundColor: Colors.deepPurple,
                      //         textStyle: TextStyle(
                      //             fontSize: 24, fontWeight: FontWeight.bold),
                      //         onSurface: Colors.white,
                      //         minimumSize: Size(150, 40))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
