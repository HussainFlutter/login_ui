import 'package:flutter/material.dart';

import 'main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Login"),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Opacity(
              opacity: 0.8,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.network(fit: BoxFit.fill, imageUrl),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _textFormFields(),
                        const SizedBox(height: 20),
                        _loginButton(),
                        const SizedBox(height: 10),
                        _dividers(),
                        const SizedBox(height: 10),
                        _socialIcons(),
                      ],
                    ),
                    _signUp(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  Widget _textFormFields() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            "Login",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Email",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
            decoration: const InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.white,
          hoverColor: Colors.white,
          focusColor: Colors.white,
          filled: true,
          hintText: "Email",
        )),
        const SizedBox(height: 10),
        const Text(
          "Password",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
            decoration: const InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.white,
          hoverColor: Colors.white,
          focusColor: Colors.white,
          filled: true,
          hintText: "Password",
        )),
      ],
    );
  }

  Widget _loginButton() {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Login",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }

  Widget _dividers() {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(thickness: 2, color: Colors.black),
          ),
        ),
        Text(
          "Or login with",
          style: TextStyle(color: Colors.black),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(thickness: 2, color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget _socialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.withOpacity(0.7),
          ),
          child: const Icon(
            Icons.g_mobiledata,
            size: 50,
          ),
        ),
        Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.withOpacity(0.7),
          ),
          child: const Icon(
            Icons.facebook_outlined,
            size: 50,
          ),
        ),
        Container(
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.withOpacity(0.7),
          ),
          child: const Icon(
            Icons.apple,
            size: 50,
          ),
        ),
      ],
    );
  }

  Widget _signUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(("Don't Have an Account? ")),
        TextButton(
          onPressed: () {},
          child: const Text("Signup",
              style: TextStyle(color: Colors.cyan, fontSize: 16)),
        )
      ],
    );
  }
}
