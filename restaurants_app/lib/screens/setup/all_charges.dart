import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/ui_elements/custom_update_button.dart';

class All_Charge extends StatefulWidget {
  const All_Charge({super.key});

  @override
  State<All_Charge> createState() => _All_ChargeState();
}

// ignore: camel_case_types
class _All_ChargeState extends State<All_Charge> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: TextField(
                          maxLength: 4,
                          decoration: InputDecoration(
                              hintText: '0.0',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              labelText: 'Delivery Charge(TK)',
                              hintStyle: const TextStyle(color: Colors.black),
                              prefixIcon: const Icon(Icons.keyboard)),
                        ),
                      ),
                      UpdateButton(
                        updateButtonName: 'Update',
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black12,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                              value: false,
                              onChanged: (newValue) {
                                setState(() {
                                  isCheck = newValue;
                                });
                              }),
                          const Text('SD Inclusive'),
                          SizedBox(
                            width: 5.w,
                          ),
                          UpdateButton(
                            updateButtonName: 'Update',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black12,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                              value: false,
                              onChanged: (newValue) {
                                setState(() {
                                  isCheck = newValue;
                                });
                              }),
                          const Text('VAT Inclusive'),
                          SizedBox(
                            width: 5.w,
                          ),
                          UpdateButton(
                            updateButtonName: 'Update',
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black12,
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
                            labelText: 'Service Charge(%)',
                            hintStyle: const TextStyle(color: Colors.black),
                            prefixIcon: const Icon(Icons.keyboard)),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.black12,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 25.w,
                              child: Checkbox(
                                  value: false,
                                  onChanged: (newValue) {
                                    setState(() {
                                      isCheck = newValue;
                                    });
                                  }),
                            ),
                            const Text('Service Charge\nAllowed'),
                            SizedBox(
                              width: 25.w,
                              child: Checkbox(
                                  value: false,
                                  onChanged: (newValue) {
                                    setState(() {
                                      isCheck = newValue;
                                    });
                                  }),
                            ),
                            const Text('Service Charge VAT'),
                            SizedBox(
                              width: 5.w,
                            ),
                            UpdateButton(
                              updateButtonName: 'Update',
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
