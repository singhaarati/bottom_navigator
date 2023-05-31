import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 224, 153, 197),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xFF0BC7B7),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Enter your username',
              labelText: "Enter your username",
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  )),
            ),
            style: const TextStyle(fontSize: 19, color: Colors.black),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFF0BC7B7),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: 'Enter your password',
              labelText: "Enter your password",
              contentPadding:
                  EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  )),
            ),
            style: const TextStyle(fontSize: 19, color: Colors.black),
          ),
          const SizedBox(height: 50),
          ElevatedButton(onPressed: () {}, child: const Text("click")),
          const Text(
            'regular',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.normal,
            ),
          )
        ]),
      ),
    );
  }
}
