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

  String? selectedCountry; // = "USA";

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
                // Bussines Unit
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: Colors.black26,
                              style: BorderStyle.solid,
                              width: 1 /*0.80*/),
                        ),
                        /*color:
                      const Color.fromARGB(255, 149, 193, 197),*/ //Colors.blue,
                        child: /*DropdownButtonHideUnderline(
                    child:*/
                            Column(
                          children: [
                            Text(
                              "وحدة العمل",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Color.fromARGB(160, 0, 0, 0),
                                  fontSize: 20),
                            ),
                            DropdownButton(
                              onTap: () {
                                print("You tapped the menu :)");
                              },
                              itemHeight: 50,
                              /*style: TextStyle(
                      //color: Colors.black,
                      backgroundColor: const Color.fromARGB(
                          255, 149, 193, 197), //Colors.white,
                    ),*/
                              icon: Icon(Icons
                                  .arrow_drop_down_circle /*, color: Colors.red,*/),
                              iconEnabledColor: const Color.fromARGB(
                                  255, 33, 150, 243), //Colors.yellow,
                              iconDisabledColor: Colors.red,
                              iconSize: 40,
                              dropdownColor: Colors.pink[50], //Colors.grey,
                              underline: Divider(
                                thickness:
                                    0, /*color: Colors.red, thickness: 10,*/
                              ), // or use DropdownButtonHideUnderline
                              isExpanded: true,
                              hint: Container(
                                padding: EdgeInsets.only(right: 10),
                                width: double.infinity,
                                child: const Text(
                                  "اختر وحدة العمل من هنا",
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.pink, fontSize: 20),
                                ),
                              ),
                              items: [
                                "المركز الرئيسي",
                                "رصيف التحميل",
                                "الفرع",
                                "الصيانة",
                                "محطة التمويل"
                              ]
                                  .map((e) => DropdownMenuItem(
                                        child: Container(
                                            width: double.infinity,
                                            color: Colors.pink[50],
                                            child: Text(
                                              "$e",
                                              style: TextStyle(
                                                  color: Colors.brown,
                                                  fontSize: 20),
                                            )),
                                        value: e,
                                      ))
                                  .toList(),
                              onChanged: (String? val) {
                                setState(() {
                                  selectedCountry = val;
                                });
                                print("Drop down menu changed to $val");
                              },
                              value: selectedCountry,
                            ),
                          ],
                        )

                        // ), DropdownButtonHideUnderline
                        )),
                const SizedBox(
                  height: 20,
                ),
                // Bussines Unit
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
