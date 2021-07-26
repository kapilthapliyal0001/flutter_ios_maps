import 'package:app_maps/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  bool mapButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  moveToMaps(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        mapButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.googleMaps);
      setState(() {
        mapButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey, // key to access the form
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_img.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                  // child: Text("ijnsdcijen"),
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Value can't be empty";
                          }
                        },
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password can't be empty";
                            } else if (value.length < 6) {
                              return "Password length should be more than 6";
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: 20.0,
                      ),
                      InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changeButton ? 50 : 150,
                          // color: Colors.deepPurple,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: changeButton
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                            color: Colors.deepPurple,
                            // borderRadius: changeButton
                            //     ? BorderRadius.circular(20.0)
                            //     : BorderRadius.circular(8.0),
                          ),
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
                                    fontSize: 18,
                                  ),
                                ),
                        ),
                      ),
                      // ElevatedButton(
                      //     child: Text("Login"),
                      //     onPressed: () {
                      //       print("submit has been clicked");
                      //       Navigator.pushNamed(
                      //           context,
                      //           MyRoutes
                      //               .homeRuote); // checke the documentation of Navigator
                      //       // as we dont need to make its object as it
                      //       // is also usign the static thing inside and not () used
                      //     },
                      //     style:
                      //         TextButton.styleFrom(minimumSize: Size(150, 40))),
                      SizedBox(
                        height: 30.0,
                      ),
                      InkWell(
                        onTap: () => moveToMaps(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: mapButton ? 50 : 250,
                          // color: Colors.deepPurple,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: mapButton
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                            color: Colors.greenAccent,
                            // borderRadius: changeButton
                            //     ? BorderRadius.circular(20.0)
                            //     : BorderRadius.circular(8.0),
                          ),
                          child: mapButton
                              ? Icon(
                                  Icons.maps_home_work,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Locate on Map",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
