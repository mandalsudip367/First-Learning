import 'package:flutter/material.dart';

class Regist_page extends StatelessWidget {
  const Regist_page({Key? key}) : super(key: key);

  moveToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: "First Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(60)))),
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Last Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                ),
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: "Email ID",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(80)))),
                  )
                ],
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Expanded(
            child: Column(
              children: [
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Create Password",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(80)))),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // verticalDirection: VerticalDirection.down,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  onTap: () => moveToLogin(context),
                  child: Container(
                    height: 50,
                    width: 120,
                    child: Center(
                        child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      onTap: () => moveToLogin(context),
                      child: Container(
                        height: 50,
                        width: 120,
                        child: Center(
                          child: Text(
                            "Confirm",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 6))
        ],
      ),
    );
  }
}
