import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/custom_add_button.dart';
import '../../widgets/custom_update_button.dart';
import '../home/home_page.dart';
import 'splash_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/512/5087/5087579.png',
                  height: 250.h,
                  width: MediaQuery.of(context).size.width,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter email';
                    }
                    return null;
                  },
                  // maxLength: 50,
                  decoration: InputDecoration(
                      // hintMaxLines: 10,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Email',
                      label: const Text('Email'),
                      hintStyle: const TextStyle(color: Colors.black),
                      contentPadding: const EdgeInsets.symmetric(vertical: 18),
                      prefixIcon: const Icon(Icons.person_add)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.number,

                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                  // maxLength: 50,
                  decoration: InputDecoration(
                      // hintMaxLines: 10,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Password',
                      label: const Text('Password'),
                      hintStyle: const TextStyle(color: Colors.black),
                      contentPadding: const EdgeInsets.symmetric(vertical: 18),
                      prefixIcon: const Icon(Icons.phone_android_rounded)),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: AddButton(
                      addButtonName: '',
                      button: ElevatedButton(
                          onPressed: () async {
                            var sharedPref = await SharedPreferences.getInstance();
                            sharedPref.setBool( SplashScreenState.KEYLOGIN, true);
                            sharedPref.setString( SplashScreenState.EMAIL, emailController.text);
                            sharedPref.setString(SplashScreenState.PASSWORD, passwordController.text);

                            _validateLoginData();

                            if (_formKey.currentState!.validate()) {
                              Get.snackbar('Welcome', 'Home!',
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: const Color(0xffffffff),
                                  colorText: const Color(0xFF0E4A88),
                                  icon: const Icon(
                                    Icons.warning_amber_rounded,
                                    color: Color(0xFF0E4A88),
                                  ));
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ))),

                  // child: ElevatedButton(
                  //     onPressed: () async {
                  //       var sharedPref = await SharedPreferences.getInstance();
                  //       sharedPref.setBool(SplashScreenState.KEYLOGIN, true);
                  //       sharedPref.setString(
                  //           SplashScreenState.EMAIL, emailController.text);
                  //       sharedPref.setString(
                  //           SplashScreenState.PASSWORD, passwordController.text);
                  //       _validateLoginData();
                  //     },
                  //     child: const Text('Login')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _validateLoginData() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      // add to database
      // addCategoryToDb();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    } else if (emailController.text.isEmpty || emailController.text.isEmpty) {
      Get.snackbar('Required', 'Email & Password are required!',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: const Color(0xFF0E4A88),
          colorText: Colors.white,
          icon: const Icon(
            Icons.warning_amber_rounded,
            color: Colors.white,
          ));
    }
  }
}
