import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:restaurants_app/controller/add_category_controller.dart';
import 'package:restaurants_app/model/add_category_model.dart';

import '../../widgets/input_field.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  // final AddCategoryController _addCategoryController = Get.put(AddCategoryController());

  final TextEditingController categoryNameController = TextEditingController();
  final TextEditingController shortNameController = TextEditingController();
  List<String> names = [];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF0E4A88),
          onPressed: () {
            _showCategoryDialog();
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Column(children: [
          Expanded(
              child: ListView.separated(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: names.length,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                height: 1.h,
                indent: 20,
                color: Colors.black12,
                endIndent: 20,
                thickness: 1,
              );
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    elevation: 10,
                    child: ListTile(
                        leading: const CircleAvatar(
                          radius: 22,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              names[index].toString(),
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                                'Created at: ${DateFormat.yMMMd().format(DateTime.now())}',
                                style: const TextStyle(fontSize: 13)),
                          ],
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0))),
                                    elevation: 10,
                                    title: Text('Delete Customer: $names'),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () => Navigator.pop(
                                            context, false), // passing false
                                        child: const Text('No'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () => Navigator.pop(
                                            context, true), // passing true
                                        child: const Text('Yes'),
                                      ),
                                    ],
                                  );
                                }).then((exit) {
                              if (exit == null) return;

                              if (exit) {
                                // user pressed Yes button
                                Get.snackbar(
                                  'Delete Item',
                                  'Successfully',
                                  snackPosition: SnackPosition.BOTTOM,
                                  backgroundColor: Colors.deepOrange,
                                );
                              } else {
                                // user pressed No button
                                Get.snackbar(
                                  'Item not deleted',
                                  'There were some problem',
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
                        ))),
              );
            },
          ))
        ]));
  }

  // Widget customWidget() {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 8),
  //     child: SizedBox(
  //       // height: 70,
  //       child: ListTile(
  //           // isThreeLine: true,
  //           minVerticalPadding: 10,
  //           leading: Image.asset(
  //             'assets/images/app_icon.png',
  //             width: 40.w,
  //             height: 40.h,
  //           ),
  //           title: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 names.toString(),
  //                 style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
  //               ),
  //               const Text('Category: drinks',
  //                   style: TextStyle(
  //                     fontSize: 13,
  //                   )),
  //               Text('Created at: ${DateFormat.yMMMd().format(DateTime.now())}',
  //                   style: const TextStyle(fontSize: 13)),
  //             ],
  //           ),
  //           trailing: IconButton(
  //             onPressed: () {
  //               showDialog(
  //                   context: context,
  //                   builder: (_) {
  //                     return AlertDialog(
  //                       title: const Text('Wanna Delete?'),
  //                       actions: [
  //                         ElevatedButton(
  //                           onPressed: () =>
  //                               Navigator.pop(context, false), // passing false
  //                           child: const Text('No'),
  //                         ),
  //                         ElevatedButton(
  //                           onPressed: () =>
  //                               Navigator.pop(context, true), // passing true
  //                           child: const Text('Yes'),
  //                         ),
  //                       ],
  //                     );
  //                   }).then((exit) {
  //                 if (exit == null) return;

  //                 if (exit) {
  //                   // user pressed Yes button
  //                   Get.snackbar(
  //                     'Delete Item',
  //                     'Successfully',
  //                     snackPosition: SnackPosition.BOTTOM,
  //                     backgroundColor: Colors.deepOrange,
  //                   );
  //                 } else {
  //                   // user pressed No button
  //                   Get.snackbar(
  //                     'Item not deleted',
  //                     'There were some problem',
  //                     snackPosition: SnackPosition.BOTTOM,
  //                     backgroundColor: Colors.deepOrange,
  //                   );
  //                 }
  //               });
  //             },
  //             icon: Icon(
  //               Icons.delete,
  //               color: Colors.red,
  //               size: 30.sp,
  //             ),
  //           )),
  //     ),
  //   );
  // }

  void _showCategoryDialog() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: _title(),
            content: Form(key: _formKey, child: _body()),
          );
        }));
  }

  Widget _title() {
    return Row(
      children: [
        const Text('Add Category'),
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
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              TextField(
                maxLength: 15,
                controller: categoryNameController,
                keyboardType: TextInputType.name,
                // onSubmitted: (value) {
                //   names.add(value);
                //   categoryNameController.clear();
                //   setState(() {});
                // },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 18),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Category Name',
                    labelText: 'Category Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.category)),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please Add Category Name';
                //   }
                // },
              ),
              SizedBox(
                height: 6.h,
              ),
              TextField(
                maxLength: 10,
                controller: shortNameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 18),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Short Name',
                    errorStyle: const TextStyle(color: Colors.red),
                    labelText: 'Short Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.category)),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Please Add Short Name';
                //   }
                // },
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
                  onPressed: () {
                    names.add(categoryNameController.text);
                    categoryNameController.clear();
                    shortNameController.clear();
                    setState(() {});
                    Navigator.of(context).pop();
                  },
                  child: const Text('ADD'),
                  // onPressed: () {
                  //   setState(() {
                  //     if (_formKey.currentState!.validate()) {
                  //       // _validateData();
                  //       // addCategoryToDb();
                  //       categoryNameController.clear();
                  //       shortNameController.clear();
                  //     } else {
                  //       return;
                  //     }
                  //   });
                  // },
                ),
              ),
            ],
          )),
    );
  }

  // _validateData() {
  //   if (categoryNameController.text.isNotEmpty &&
  //       shortNameController.text.isNotEmpty) {
  //     // add to database
  //     // addCategoryToDb();
  //     Get.back();
  //   } else if (categoryNameController.text.isEmpty ||
  //       shortNameController.text.isEmpty) {
  //     Get.snackbar('Required', 'All fields are required !',
  //         snackPosition: SnackPosition.BOTTOM,
  //         // backgroundColor: const Color(0xFF0E4A88),
  //         backgroundColor: Colors.green,
  //         colorText: Colors.white,
  //         icon: const Icon(
  //           Icons.warning_amber_rounded,
  //           color: Colors.white,
  //         ));
  //   }
  // }

  addCategoryToDb() async {
    // int value =  await _addCategoryController.addCategory(
    //     category: AddCategory(
    //       categoryName: categoryNameController.text,
    //       shortName: shortNameController.text
    //     )
    //    );

    //    print("My id is "+"$value");
    // }
    Get.back();
  }
}
