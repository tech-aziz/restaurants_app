import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            TextField(
                decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              hintText: 'Search Item Here...',
              prefixIcon: const Icon(Icons.search),
            )),
            SizedBox(
              height: 5.h,
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()
              ),
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
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
              TextField(
                maxLength: 15,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Item Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.keyboard)),
              ),
              const SizedBox(
                height: 2,
              ),
              TextField(
                maxLength: 10,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Short Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                maxLength: 4,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Item Price',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                maxLength: 4,
                decoration: InputDecoration(
                    hintText: '0.0',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'SD(%)',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                maxLength: 4,
                decoration: InputDecoration(
                    hintText: '0.0',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'VAT(%)',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.keyboard)),
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
