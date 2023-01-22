import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Emplyes extends StatefulWidget {
  const Emplyes({super.key});

  @override
  State<Emplyes> createState() => _EmplyesState();
}

class _EmplyesState extends State<Emplyes> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF0E4A88),
        onPressed: () {
          _showEmployeDialog();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          customWidget(),
          Divider(
            height: 0.h,
            indent: 54,
            color: Colors.black12,
            endIndent: 50,
            thickness: 1,
          )
        ],
      ),
    );
  }

  Widget customWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox(
        // height: 70,
        child: ListTile(
            minVerticalPadding: 10,
            leading: Image.asset(
              'assets/images/avatar.png',
              width: 40.w,
              height: 40.h,
            ),
            title: const Text(
              'Rahim(Waiter)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('01912121212'),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.red,
                size: 30.sp,
              ),
            )),
      ),
    );
  }

  void _showEmployeDialog() {
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
        const Text('Add Employe'),
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
          physics:
              const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                maxLength: 20,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Name',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.person)),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                maxLength: 11,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Mobile Number',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.phone)),
              ),
              TextField(
                maxLength: 50,
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.email)),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextField(
                decoration: InputDecoration(
                    hintMaxLines: 10,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Address',
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.location_on)),
              ),
              // CheckboxListTile(
              //   title: Text('Waiter'),
              //   value: isCheck,
              //   onChanged: (newValue){
              //     setState(() {
              //       isCheck = newValue;
              //     });
              //   }),
              Row(
                children: [
                  Checkbox(
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      }),
                  const Text('Waiter')
                ],
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
                  child: const Text('CREATE'),
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
