import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:restaurant_pos_new/global/styles.dart';
import 'package:restaurant_pos_new/screens/setup/controllers/setup_controller.dart';
import 'package:restaurant_pos_new/utils/app_services.dart';
import 'package:restaurant_pos_new/utils/color_helper.dart';
import 'package:restaurant_pos_new/utils/constants.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'dart:convert';

import 'package:restaurant_pos_new/utils/snack_message.dart';

class ItemSetupDialog extends StatelessWidget {
  ItemSetupDialog({Key? key}) : super(key: key);

  final SetupController _setupController = Get.find();

  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _shortNameTextController = TextEditingController();
  final TextEditingController _regularPriceTextController = TextEditingController();
  final TextEditingController _takeAwayPriceTextController = TextEditingController();
  final TextEditingController _stockTextController = TextEditingController();
  final TextEditingController _vatPercentTextController = TextEditingController();
  final TextEditingController _vatAmountTextController = TextEditingController();
  final TextEditingController _sdPercentTextController = TextEditingController();
  final TextEditingController _sdAmountTextController = TextEditingController();
  final TextEditingController _serviceChargePercentTextController = TextEditingController();
  final TextEditingController _serviceChargeAmountTextController = TextEditingController();
  final TextEditingController _expireDateTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: AlertDialog(
        title: _title(),
        content: _body(),
      ),
    );
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
            size: Constants.mediumIconSize,
          ),
          onTap: () {
            Get.back();
          },
        )
      ],
    );
  }

  Widget _body() {
    return SizedBox(
        width: Constants.dialogWidth,
        height: Get.context!.mediaQuerySize.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              Container(
                width: Get.context!.mediaQuerySize.width,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54)
                ),
                child: Obx(() => DropdownButtonFormField(
                  value: _setupController.selectedCategoryId.value == 0 ? null : _setupController.selectedCategoryId.value,
                  hint: Text(
                    'Please Choose a Category',
                    style: Style.mediumInputText(),
                  ),
                  items: _setupController.categoryList.map((value) {
                    return DropdownMenuItem<int>(
                      value: value.categoryId!,
                      child: Text(
                        value.name!,
                        style: Style.mediumInputText(),
                      ),
                    );
                  }).toList(),
                  onChanged: (selectedItem) {
                    debugPrint(selectedItem.toString());
                    _setupController.selectedCategoryId.value = selectedItem as int;
                  },
                ),)
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: _nameTextController,
                      keyboardType: TextInputType.name,
                      maxLength: 15,
                      decoration: InputDecoration(
                        labelText: 'Item Name',
                        prefixIcon: const Icon(Icons.keyboard),
                        enabledBorder: Style.inputBorder(),
                        focusedBorder: Style.focusBorder(),
                      ),
                      style: Style.largeInputText(),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: _shortNameTextController,
                      keyboardType: TextInputType.name,
                      maxLength: 10,
                      decoration: InputDecoration(
                        labelText: 'Short Name',
                        prefixIcon: const Icon(Icons.keyboard),
                        enabledBorder: Style.inputBorder(),
                        focusedBorder: Style.focusBorder(),
                      ),
                      style: Style.largeInputText(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: _regularPriceTextController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 4,
                      decoration: InputDecoration(
                        labelText: 'Item Price',
                        prefixIcon: const Icon(Icons.keyboard),
                        enabledBorder: Style.inputBorder(),
                        focusedBorder: Style.focusBorder(),
                      ),
                      style: Style.largeInputText(),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: _sdPercentTextController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 4,
                      decoration: InputDecoration(
                        labelText: 'SD (%)',
                        prefixIcon: const Icon(Icons.keyboard),
                        enabledBorder: Style.inputBorder(),
                        focusedBorder: Style.focusBorder(),
                      ),
                      style: Style.largeInputText(),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    flex: 1,
                    child: TextField(
                      controller: _vatPercentTextController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 4,
                      decoration: InputDecoration(
                        labelText: 'VAT (%)',
                        prefixIcon: const Icon(Icons.keyboard),
                        enabledBorder: Style.inputBorder(),
                        focusedBorder: Style.focusBorder(),
                      ),
                      style: Style.largeInputText(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: const Text('ADD'),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(Get.context!.mediaQuerySize.width, 50),
                    primary: ColorHelper.primaryColor,
                    textStyle: const TextStyle(
                        fontSize: Constants.mediumFontSize,
                        fontWeight: FontWeight.w500
                    )
                ),
                onPressed: () {},
              ),
            ],
          ),
        )
    );
  }
}
