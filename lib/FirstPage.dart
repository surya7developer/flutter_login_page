import 'package:flutter/material.dart';

class RunMyApp extends StatefulWidget {
  const RunMyApp({super.key});

  @override
  State<RunMyApp> createState() => FirstPage();
}

class FirstPage extends State<RunMyApp>  {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    var mEmail = TextEditingController();
    var mPassword = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("This is First Page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 100, bottom: 100),
                  child: const Text(
                    "Login Page",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.blue),
                  )),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  controller: mEmail,
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: const InputDecoration(
                      hintText: "Please enter email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 300,
                height: 50,
                child: TextField(
                  obscureText: !_passwordVisible,
                //  controller: mPassword,
                  decoration: InputDecoration(
                    filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        }
                      ),
                      hintText: "Please enter password",
                      prefixIcon: const Icon(Icons.wifi_password),
                      border: const OutlineInputBorder()),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5,right: 10),
                  width: 300,
                  child: const Text("Forgot Password?",textAlign: TextAlign.end,)),
              Container(
                width: 100,
                margin: const EdgeInsets.only(top: 50),
                child: ElevatedButton(
                    onPressed: () {
                      if (mEmail.text.toString().isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Please enter email"),
                        ));
                      } else if (mPassword.text.toString().isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Please enter password"),
                        ));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                              "Email : ${mEmail.text.toString()}\nPassword : ${mPassword.text.toString()}"),
                        ));
                      }
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
