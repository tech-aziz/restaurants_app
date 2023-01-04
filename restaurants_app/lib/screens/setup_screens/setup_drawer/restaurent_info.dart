import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Restaurent_Info extends StatefulWidget {
  const Restaurent_Info({super.key});

  @override
  State<Restaurent_Info> createState() => _Restaurent_InfoState();
}

class _Restaurent_InfoState extends State<Restaurent_Info> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: .20.sh,
                    // width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/images/app_icon.png',
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.blue,
                          size: 40.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.upload,
                          color: Colors.blue,
                          size: 40.sp,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 30,
                    controller: nameController,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                        prefixIcon: const Icon(Icons.keyboard),
                        hintText: 'Restaurent Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    maxLength: 160,
                    controller: addressController,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                        prefixIcon: const Icon(Icons.location_on),
                        hintText: 'Address',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    maxLength: 11,
                    controller: phoneController,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                        prefixIcon: const Icon(Icons.phone),
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    maxLength: 50,
                    controller: emailController,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                        prefixIcon: const Icon(Icons.email),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      onPressed: () {},
                      child: const Text('Update'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
