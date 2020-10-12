import 'package:Fluttern/main.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Fluttern"),
      ),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color.fromRGBO(190, 224, 245, 1),
          // image: DecorationImage(
          //   image: AssetImage(
          //     'assets/homeback.jpg',
          //   ),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: new EdgeInsets.all(15.0),
                width: width,
                height: height * 0.17,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/loginimg.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 22.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: width * 0.93,
                    margin: new EdgeInsets.all(10.0),
                    child: new TextFormField(
                      autofocus: false,
                      decoration: new InputDecoration(
                        labelText: "Username",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(
                            25.0,
                          ),
                          borderSide: new BorderSide(),
                        ),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Username can't be Empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Container(
                    height: 50,
                    width: width * 0.93,
                    margin: new EdgeInsets.all(10.0),
                    child: new TextFormField(
                      autofocus: false,
                      decoration: new InputDecoration(
                        labelText: "Mobile Number",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(
                            25.0,
                          ),
                          borderSide: new BorderSide(),
                        ),
                      ),
                      validator: (val) {
                        if (val.length == 0 || val.length < 10) {
                          return "Mobile Number";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: width * 0.93,
                    margin: new EdgeInsets.all(10.0),
                    child: new TextFormField(
                      obscureText: true,
                      autofocus: false,
                      decoration: new InputDecoration(
                        labelText: "Password",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(
                            25.0,
                          ),
                          borderSide: new BorderSide(),
                        ),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Password can't be Empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Container(
                    height: 50,
                    width: width * 0.93,
                    margin: new EdgeInsets.all(10.0),
                    child: new TextFormField(
                      autofocus: false,
                      decoration: new InputDecoration(
                        labelText: "E-mail",
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(
                            25.0,
                          ),
                          borderSide: new BorderSide(),
                        ),
                      ),
                      validator: (val) {
                        if (val.length == 0) {
                          return "Email can't be Empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50.0,
                    width: width * 0.8,
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 30.0, fontFamily: "Lustria"),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Already Register?",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Lustria",
                    ),
                  ),
                  InkWell(
                    child: new Text(
                      "Login Here",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black,
                          fontFamily: "Lustria"),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
