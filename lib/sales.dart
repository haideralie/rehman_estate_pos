import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Sales extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sales'),
          backgroundColor: Colors.red,
        ),
        // backgroundColor: Colors.red,
        body: SafeArea(
          child: Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                      child: Text('Block Name ')),

                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      //  controller: emailTextController,

                      decoration: InputDecoration(
                        labelText: "Enter Block Name",
                        labelStyle: TextStyle(color: Colors.red),
                        fillColor: Colors.red,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),

                      // decoration: InputDecoration(
                      //     border: OutlineInputBorder(), labelText: "Email"),
                      // onChanged: (value) {
                      //   email = value;
                      // },
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                      child: Text('Plot No ')),

                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      //controller: passwordTextController,
                      // obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Enter Plot No",
                        labelStyle: TextStyle(color: Colors.red),
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          ),
                        ),
                      ),
                      // onChanged: (value) {
                      //   password = value;
                      // },
                    ),
                  ),

                  // Container(
                  //     padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                  //     child: Text('Block Name ')),
                  //
                  // Container(
                  //   padding: EdgeInsets.all(20),
                  //   child: TextFormField(
                  //     //controller: passwordTextController,
                  //     // obscureText: true,
                  //     decoration: InputDecoration(
                  //       labelText: "Enter Customer Name",
                  //       labelStyle: TextStyle(color: Colors.red),
                  //       fillColor: Colors.white,
                  //       focusedBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: BorderSide(
                  //           color: Colors.red,
                  //         ),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: BorderSide(
                  //           color: Colors.red,
                  //           width: 2.0,
                  //         ),
                  //       ),
                  //     ),
                  //     // onChanged: (value) {
                  //     //   password = value;
                  //     // },
                  //   ),
                  // ),

                  // Container(
                  //     padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                  //     child: Text('Sale Price ')),
                  //
                  // Container(
                  //   padding: EdgeInsets.all(20),
                  //   child: TextFormField(
                  //     //controller: passwordTextController,
                  //     // obscureText: true,
                  //     decoration: InputDecoration(
                  //       labelText: "Enter Sale Price",
                  //       labelStyle: TextStyle(color: Colors.red),
                  //       fillColor: Colors.white,
                  //       focusedBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: BorderSide(
                  //           color: Colors.red,
                  //         ),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: BorderSide(
                  //           color: Colors.red,
                  //           width: 2.0,
                  //         ),
                  //       ),
                  //     ),
                  //     // onChanged: (value) {
                  //     //   password = value;
                  //     // },
                  //   ),
                  // ),

                  FlatButton(
                      onPressed: null,
                      child: Text(
                        'Submit ',
                        style: TextStyle(color: Colors.red),
                      ))

                  // Container(
                  //     padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                  //     child: Text('Received Amount ')),
                  //
                  // Container(
                  //   padding: EdgeInsets.all(20),
                  //   child: TextFormField(
                  //     //controller: passwordTextController,
                  //     // obscureText: true,
                  //     decoration: InputDecoration(
                  //       labelText: "Enter Amount Received",
                  //       labelStyle: TextStyle(color: Colors.red),
                  //       fillColor: Colors.white,
                  //       focusedBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: BorderSide(
                  //           color: Colors.red,
                  //         ),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: BorderSide(
                  //           color: Colors.red,
                  //           width: 2.0,
                  //         ),
                  //       ),
                  //     ),
                  //     // onChanged: (value) {
                  //     //   password = value;
                  //     // },
                  //   ),
                  // ),
                  //
                  // Container(
                  //     padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                  //     child: Text('Description ')),
                  //
                  // Container(
                  //   padding: EdgeInsets.all(20),
                  //   child: TextFormField(
                  //     //controller: passwordTextController,
                  //     // obscureText: true,
                  //     decoration: InputDecoration(
                  //       labelText: "Description",
                  //       labelStyle: TextStyle(color: Colors.red),
                  //       fillColor: Colors.white,
                  //       focusedBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: BorderSide(
                  //           color: Colors.red,
                  //         ),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25.0),
                  //         borderSide: BorderSide(
                  //           color: Colors.red,
                  //           width: 2.0,
                  //         ),
                  //       ),
                  //     ),
                  //     // onChanged: (value) {
                  //     //   password = value;
                  //     // },
                  //   ),
                  // ),
                  //
                  // RaisedButton(onPressed: () async {
                  //   setState(() {
                  //     // showspinner = true;
                  //   });
                  // }),
                  //   try {
                  //     final user =
                  //     await _auth.signInWithEmailAndPassword(
                  //         email: email, password: password);
                  //
                  //     if (user != null) {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => HomeScreen1()));
                  //     }
                  //
                  //     setState(() {
                  //       showspinner = false;
                  //     });
                  //     return Center(
                  //       child: CircularProgressIndicator(),
                  //     );
                  //   } catch (e) {
                  //     print(e);
                  //   }
                  // },
                  //   child: Text('Login',
                  //       style: TextStyle(color: Colors.white)),
                  //   color: Colors.red,
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(18.0),
                  //       side: BorderSide(color: Colors.red)),
                  // )
                ]),
          ),
        ));
    //);
  }
}
