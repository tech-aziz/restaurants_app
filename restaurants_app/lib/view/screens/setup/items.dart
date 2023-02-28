import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:restaurants_app/view/widgets/input_field.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  
  TextEditingController searchItemController = TextEditingController();
  TextEditingController itemNameController = TextEditingController();
  TextEditingController itemPriceController = TextEditingController();
  TextEditingController sdController = TextEditingController();
  TextEditingController vatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF0E4A88),
          onPressed: () {
            _showItemDialog();
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              InputField(
                controller: searchItemController,
                hintText: 'Search Item Here...',
                icon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.symmetric(vertical: 18),
              ),
              SizedBox(
                height: 5.h,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  children: [
                    customWidget(),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Divider(
                      height: 0.h,
                      indent: 54,
                      color: Colors.black12,
                      endIndent: 50,
                      thickness: 1,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget customWidget() {
    return SizedBox(
      // height: 70,
      child: ListTile(
          minVerticalPadding: 10,
          leading: Image.asset(
            'assets/images/item.png',
            width: 40.w,
            height: 40.h,
          ),
          title: const Text('Pepsi'),
          subtitle: const Text('Category: Soft-drinks'),
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
    );
  }

  void _showItemDialog() {
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
        const Text('Add Item'),
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
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black54)),
                child: DropdownButtonFormField(
                  hint: const Text(
                    'Please Choose a Category',
                    style: TextStyle(color: Colors.black),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'one',
                      child: Text('one'),
                    ),
                    DropdownMenuItem(
                      value: 'two',
                      child: Text('two'),
                    ),
                    DropdownMenuItem(
                      value: 'three',
                      child: Text('three'),
                    )
                  ],
                  onChanged: (selectedItem) {
                    debugPrint(selectedItem.toString());
                  },
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              InputField(
                controller: itemNameController,
                hintText: 'Item Name',
                icon: const Icon(Icons.keyboard),
                maxLength: 15,
                hintStyle: const TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.symmetric(vertical: 18),
              ),
              const SizedBox(
                height: 2,
              ),
              InputField(
                controller: itemNameController,
                hintText: 'Short Name',
                icon: const Icon(Icons.keyboard),
                maxLength: 10,
                hintStyle: const TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.symmetric(vertical: 18),
              ),
              SizedBox(
                height: 2.h,
              ),
              InputField(
                controller: itemPriceController,
                hintText: 'Item Price',
                icon: const Icon(Icons.keyboard),
                maxLength: 4,
                hintStyle: const TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.symmetric(vertical: 18),
              ),
              SizedBox(
                height: 2.h,
              ),
              InputField(
                controller: sdController,
                hintText: '0.0',
                labelText: 'SD(%)',
                icon: const Icon(Icons.keyboard),
                maxLength: 4,
                hintStyle: const TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.symmetric(vertical: 18),
              ),
              SizedBox(
                height: 2.h,
              ),
              InputField(
                controller: vatController,
                hintText: '0.0',
                labelText: 'VAT(%)',
                icon: const Icon(Icons.keyboard),
                maxLength: 4,
                hintStyle: const TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.symmetric(vertical: 18),
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
