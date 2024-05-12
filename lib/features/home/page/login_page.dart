import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/features/detail/page/detail_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.isLogin = true});

  final bool? isLogin;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    bool loginStatus = widget.isLogin ?? true;
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Text(
                  loginStatus ? "Login" : "Create Account",
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://lh3.googleusercontent.com/COxitqgJr1sJnIDe8-jiKhxDx1FrYbtRHKJ9z_hELisAlapwE9LUPh6fcXIfb5vwpbMl4xl9H9TRFPc5NOO8Sb3VSgIBrfRYvW6cUA",
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://imgs.search.brave.com/b1qzWLZiN4Dm3HPkkcOxdae80mpuTE1g_1Yd1WivZrI/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzMyLzIwLzAz/LzM2MF9GXzUzMjIw/MDM1NV9vZEtOOU91/M1dCNmlIV0pURklF/bEZ0SmJUdXpKc3BZ/Ni5qcGc",
                      height: 25,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://imgs.search.brave.com/_3HcGE4I9CxX2CZnz1okrB-ZUyDqhhpQB9sHdMe20FA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9mcmVl/bG9nb3BuZy5jb20v/aW1hZ2VzL2FsbF9p/bWcvMTY1NzA0NTQ0/NHR3aXR0ZXItbG9n/by10cmFuc3BhcmVu/dC1wbmcucG5n",
                      height: 25,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network(
                      "https://imgs.search.brave.com/mTdYQvhbzNV9h0ZctWfiWrDYffkTx_vfQ4wNTCBYzWo/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9hc3Nl/dHMuc3RpY2twbmcu/Y29tL2ltYWdlcy81/ODBiNTdmY2Q5OTk2/ZTI0YmM0M2M1MjEu/cG5n",
                      height: 25,
                      width: 25,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("or"),
                    Expanded(
                      child: Divider(
                        color: Colors.blue,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                          controller: nameController,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[a-zA-Z]'))
                          ],
                          validator: (value) => formValidator(value ?? ""),
                          decoration: const InputDecoration(
                              hintText: "Name",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none))),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (value) => formValidator(value ?? ""),
                        decoration: const InputDecoration(
                          hintText: "Email",
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: isVisible ? true : false,
                        controller: passwordController,
                        validator: (value) => formValidator(value ?? ""),
                        decoration: InputDecoration(
                            suffix: InkWell(
                                onTap: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                child: Icon(isVisible
                                    ? Icons.remove_red_eye
                                    : Icons.remove_red_eye_outlined)),
                            hintText: "Password",
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  onPressed: loginStatus
                      ? () {
                          if (formkey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DetailPage()));
                          }
                          if (nameController.text.isEmpty &&
                              passwordController.text.isEmpty) {
                            print("error");
                          } else {
                            print(
                                "${nameController.text} ${passwordController.text}");
                          }
                          //if (formkey.currentState!.validate()) {
                          // print("success");
                          // }
                        }
                      : () {},
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 100,
                    right: 100,
                    bottom: 20,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.red,
                  child: Text(
                    loginStatus ? 'Login' : "Sign Up",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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

String? formValidator(value) {
  if (value.isEmpty) {
    return "Something is missing";
  } else if (value.length < 5) {
    return "field length must be greater than 5 characters";
  }
  return null;
}
