import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            customWidget(),
            Divider(
              height: 1.h,
              indent: 54,
              color: Colors.black12,
              endIndent: 50,
              thickness: 1,
            )
          ],
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
            // isThreeLine: true,
            minVerticalPadding: 10,
            leading: Image.asset(
              'assets/images/app_icon.png',
              width: 40.w,
              height: 40.h,
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pepsi',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                const Text('Category: drinks',style: TextStyle(fontSize: 13,)),
                Text(
                    'Created at: ${DateFormat.yMMMd().format(DateTime.now())}',style: const TextStyle(fontSize: 13)),
              ],
            ),
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
            )),
      ),
    );
  }

  void _showCategoryDialog() {
    showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: _title(),
            content: _body(),
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
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              TextField(
                maxLength: 15,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Category Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.category)),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                maxLength: 10,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Short Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.category)),
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
                  child: const Text('ADD'),
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
