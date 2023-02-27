import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/input_field.dart';

class Emplyes extends StatefulWidget {
  const Emplyes({super.key});

  @override
  State<Emplyes> createState() => _EmplyesState();
}

class _EmplyesState extends State<Emplyes> {

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF0E4A88),
          onPressed: () {
            _showEmployeDialog();
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          physics:const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()
          ),
          child: Column(
            children: [
              customWidget(),
              Divider(
                height: 0.h,
                indent: 54,
                color: Colors.black12,
                endIndent: 50,
                thickness: 1,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox(
        // height: 70,
        child: ListTile(
            minVerticalPadding: 10,
            leading: Image.asset(
              'assets/images/avatar.png',
              width: 40.w,
              height: 40.h,
            ),
            title: const Text(
              'Rahim(Waiter)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('01912121212'),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                    
                      title: const Text('Wanna Delete?'),
                      actions: [
                        ElevatedButton(
                          onPressed: () =>
                              Navigator.pop(context, false), // passing false
                          child: const Text('No'),
                        ),
                        ElevatedButton(
                          onPressed: () =>
                              Navigator.pop(context, true), // passing true
                          child: const Text('Yes'),
                        ),
                      ],
                    );
                  }).then((exit) {
                if (exit == null) return;

                if (exit) {
                  // user pressed Yes button
                  Get.snackbar(
                    'Delete Item', 'Successfully',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.deepOrange,
                    );
                } else {
                  // user pressed No button
                  Get.snackbar(
                    'Item not deleted', 'There were some problem',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.deepOrange,
                    );
                }
              });
              },
              icon: Icon(
                Icons.delete,
                color: Colors.red,
                size: 30.sp,
              ),
            )),
      ),
    );
  }

  void _showEmployeDialog() {
    showDialog(
        context: context,
        builder: ((context) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: AlertDialog(
              title: _title(),
              content: _body(),
            ),
          );
        }));
  }

  Widget _title() {
    return Row(
      children: [
        const Text('Add Employe'),
        const Spacer(),
        InkWell(
          child: Icon(
            Icons.cancel_outlined,
            color: Colors.red.shade300,
            size: 20.sp,
          ),
          onTap: () {
            // Get.back();
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }

  Widget _body() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          physics:
              const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                InputField(
                controller: nameController,
                hintText: 'Name',
                icon: const Icon(Icons.person),
                maxLength: 20,
                hintStyle: const TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.symmetric(vertical: 18),
              ),

              SizedBox(
                height: 2.h,
              ),

              InputField(
                controller: nameController,
                hintText: 'Mobile Number',
                icon: const Icon(Icons.phone),
                maxLength: 11,
                hintMaxLines: 10,
                hintStyle: const TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.symmetric(vertical: 18),
              ),

              TextField(
                maxLength: 50,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.black),
                     contentPadding: const EdgeInsets.symmetric(vertical: 18),
                    prefixIcon: const Icon(Icons.email)),
              ),
              SizedBox(
                height: 2.h,
              ),

              TextField(
                maxLength: 50,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Address',
                    hintStyle: const TextStyle(color: Colors.black),
                     contentPadding: const EdgeInsets.symmetric(vertical: 18),
                    prefixIcon: const Icon(Icons.location_on)),
              ),


              // CheckboxListTile(
              //   title: Text('Waiter'),
              //   value: isCheck,
              //   onChanged: (newValue){
              //     setState(() {
              //       isCheck = newValue;
              //     });
              //   }),
              Row(
                children: [
                  Checkbox(
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      }),
                  const Text('Waiter')
                ],
              ),
              SizedBox(
                height: 25.h,
              ),

              Container(
                height: 40.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFF0E4A88),
                ),
                child: ElevatedButton(
                  child: const Text('CREATE'),
                  onPressed: () {
                    // Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          )),
    );
  }
}
