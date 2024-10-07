import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late PageController pc;

  @override
  void initState() {
    pc = PageController(
      initialPage: 3,
      viewportFraction: 0.5, // take a portion of page
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
          title: Text("Design App Note Login Page - No.84"),
        ),*/
      //drawer: Drawer(),
      body: Container(
        color: const Color.fromARGB(255, 149, 193, 197),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("images/EFGreatDream.jpg"),
          //
          //Image.asset("images/google.png"),
          //Image.asset("images/ColorBird0001.jpg"),,
          Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "User Name", //"Tassneem", //
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "If you haven't account ",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      InkWell(
                          child: Text(
                            "Click here",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge, //TextStyle(color: Colors.blue,),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed("signup");
                          })
                    ],
                  ),
                ),
                Container(
                    child: ElevatedButton(
                  //textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  /*style: ButtonStyle(
                      {
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),*/
                  /*}
                      ),*/
                  child: const Text("Login"),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("homepage");
                  },
                ))
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
