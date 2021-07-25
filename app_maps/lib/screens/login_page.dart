import 'package:app_maps/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = !changeButton;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRuote);
                      },
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
                    )
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
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
