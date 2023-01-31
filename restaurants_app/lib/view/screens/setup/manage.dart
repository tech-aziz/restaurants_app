import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/view/ui_elements/custom_update_button.dart';

class Manage extends StatefulWidget {
  const Manage({super.key});

  @override
  State<Manage> createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Paper Size',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black54)),
                  child: DropdownButtonFormField(
                    hint: const Text(
                      '58mm',
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
              ),
              SizedBox(
                width: 5.h,
              ),
              UpdateButton(
                updateButtonName: 'Update',
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Divider(
            height: 0.h,
            color: Colors.black12,
            thickness: 1,
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    setState(() {
                      isCheck = newValue;
                    });
                  }),
              const Text('Stock Manage Allowed',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const Spacer(),
              UpdateButton(
                updateButtonName: 'Update',
              ),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Divider(
            height: 0.h,
            color: Colors.black12,
            thickness: 1,
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Checkbox(
                  value: false,
                  onChanged: (newValue) {
                    setState(() {
                      isCheck = newValue;
                    });
                  }),
              const Text('Expire Date Manage Allowed',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const Spacer(),
              UpdateButton(
                updateButtonName: 'Update',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
