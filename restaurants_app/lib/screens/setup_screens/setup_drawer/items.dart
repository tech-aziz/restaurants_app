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
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black54)),
                child: DropdownButtonFormField(
                  hint: Text(
                    'Please Choose a Category',
                    style: TextStyle(color: Colors.black),
                  ),
                  items: [
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
                height: 17,
              ),
              TextField(
                maxLength: 15,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Item Name',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2,
              ),
              TextField(
                maxLength: 10,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Short Name',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2,
              ),
              TextField(
                maxLength: 4,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Item Price',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2,
              ),
              TextField(
                maxLength: 4,
                decoration: InputDecoration(
                    hintText: '0.0',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'SD(%)',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 2,
              ),
              TextField(
                maxLength: 4,
                decoration: InputDecoration(
                    hintText: '0.0',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'VAT(%)',
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.keyboard)),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFF0E4A88),
                ),
                child: ElevatedButton(
                  child: Text('ADD'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          )),
    );
  }
}
