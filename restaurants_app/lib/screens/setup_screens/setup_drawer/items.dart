import 'package:flutter/material.dart';
import 'package:restaurants_app/widget/custom_add_button.dart';

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
          _showDialog();
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
            const SizedBox(
              height: 10,
            ),
            customWidget(),
            const SizedBox(
              height: 10,
            ),
            Divider(
              height: 0,
              indent: 2,
              color: Colors.black12,
              endIndent: 1,
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }

  Widget customWidget() {
    return Container(
      height: 70,
      child: ListTile(
          minVerticalPadding: 10,
          leading: Image.asset(
            'assets/images/item.png',
            width: 40,
            height: 40,
          ),
          title: Text('Pepsi'),
          subtitle: Text('Category: Soft-drinks'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.red,
              size: 30,
            ),
          )),
    );
  }

  void _showDialog() {
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
            size: 20,
          ),
          onTap: () {
            // Get.back();
          },
        )
      ],
    );
  }

  Widget _body() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black54)),
            child: DropdownButtonFormField(
              hint: Text(
                'Please Choose a Category',
              ),
              items: [
                DropdownMenuItem<int>(
                  // value: value.categoryId!,
                  child: Text('one'),
                )
              ],
              onChanged: (selectedItem) {
                debugPrint(selectedItem.toString());
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: TextField(
                  // controller: _nameTextController,
                  keyboardType: TextInputType.name,
                  maxLength: 15,
                  decoration: InputDecoration(
                    labelText: 'Item Name',
                    prefixIcon: const Icon(Icons.keyboard),
                    // enabledBorder: Style.inputBorder(),
                    // focusedBorder: Style.focusBorder(),
                  ),
                  // style: Style.largeInputText(),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextField(
                  // controller: _shortNameTextController,
                  keyboardType: TextInputType.name,
                  maxLength: 10,
                  decoration: InputDecoration(
                    labelText: 'Short Name',
                    prefixIcon: const Icon(Icons.keyboard),
                    // enabledBorder: Style.inputBorder(),
                    // focusedBorder: Style.focusBorder(),
                  ),
                  // style: Style.largeInputText(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: TextField(
                  // controller: _regularPriceTextController,
                  keyboardType: TextInputType.number,
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  maxLength: 4,
                  decoration: InputDecoration(
                    labelText: 'Item Price',
                    prefixIcon: const Icon(Icons.keyboard),
                    // enabledBorder: Style.inputBorder(),
                    // focusedBorder: Style.focusBorder(),
                  ),
                  // style: Style.largeInputText(),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextField(
                  // controller: _sdPercentTextController,
                  keyboardType: TextInputType.number,
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  maxLength: 4,
                  decoration: InputDecoration(
                    labelText: 'SD (%)',
                    prefixIcon: const Icon(Icons.keyboard),
                    // enabledBorder: Style.inputBorder(),
                    // focusedBorder: Style.focusBorder(),
                  ),
                  // style: Style.largeInputText(),
                ),
              ),
              Expanded(
                flex: 1,
                child: TextField(
                  // controller: _vatPercentTextController,
                  keyboardType: TextInputType.number,
                  // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  maxLength: 4,
                  decoration: InputDecoration(
                    labelText: 'VAT     (%)',
                    prefixIcon: const Icon(Icons.keyboard),
                    // enabledBorder: Style.inputBorder(),
                    // focusedBorder: Style.focusBorder(),
                  ),
                  // style: Style.largeInputText(),
                ),
              ),
              ElevatedButton(
                child: const Text('ADD'),
                style: ElevatedButton.styleFrom(
                    // minimumSize: Size(Get.context!.mediaQuerySize.width, 50),
                    // primary: ColorHelper.primaryColor,
                    // textStyle: const TextStyle(
                    //     fontSize: Constants.mediumFontSize,
                    //     fontWeight: FontWeight.w500
                    // )
                    ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
