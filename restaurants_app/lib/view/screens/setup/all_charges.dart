import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurants_app/view/widgets/custom_update_button.dart';

import '../../widgets/input_field.dart';

class All_Charge extends StatefulWidget {
  const All_Charge({super.key});

  @override
  State<All_Charge> createState() => _All_ChargeState();
}

// ignore: camel_case_types
class _All_ChargeState extends State<All_Charge> {

  TextEditingController deliveryChargeController = TextEditingController();
  TextEditingController sdController = TextEditingController();
  TextEditingController vatController = TextEditingController();
  TextEditingController serviceChargeController = TextEditingController();
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Padding(
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
                            child: InputField(
                              controller: deliveryChargeController,
                              hintText: '0.0',
                              labelText: 'Delivery Charge(TK)',
                              icon: const Icon(Icons.keyboard),
                              maxLength: 4,
                              hintStyle: const TextStyle(color: Colors.black),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 18),
                            )),
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
                        InputField(
                          controller: sdController,
                          hintText: '0.0',
                          labelText: 'SD(%)',
                          icon: const Icon(Icons.keyboard),
                          maxLength: 4,
                          hintStyle: const TextStyle(color: Colors.black),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 18),
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
                        InputField(
                          controller: sdController,
                          hintText: '0.0',
                          labelText: 'VAT(%)',
                          icon: const Icon(Icons.keyboard),
                          maxLength: 4,
                          hintStyle: const TextStyle(color: Colors.black),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 18),
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
    
                          InputField(
                          controller: sdController,
                          hintText: '0.0',
                          labelText: 'Service Charge(%)',
                          icon: const Icon(Icons.keyboard),
                          maxLength: 4,
                          hintStyle: const TextStyle(color: Colors.black),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 18),
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
      ),
    );
  }
}
