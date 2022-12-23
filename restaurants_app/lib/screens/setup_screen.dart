import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class SetUpPage extends StatefulWidget {
  String itemName;
  SetUpPage({super.key, this.itemName = 'First page'});

  @override
  State<SetUpPage> createState() => _SetUpPageState();
}

class _SetUpPageState extends State<SetUpPage> {
  final Uri _url = Uri.parse('https://mediasoftbd.com/');

  //url luncher function
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: ListView(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: .15.sh,
                  width: .6.sw,
                  child: InkWell(
                    onTap: () {
                      //url will be open
                      _launchUrl("www.mediasoftbd.com");
                    },
                    child: Image.asset('assets/images/mediasoft_logo.png',
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SetUpPage(itemName: 'Items',)));
                },
                child: itemList(
                    Icon(
                      Icons.menu_open_rounded,
                      color: Colors.black,
                    ),
                    'Items'),
              ),
              Divider(
                height: 0,
                indent: 12,
                color: Colors.black12,
                endIndent: 12,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SetUpPage(itemName: 'Category',)));
                },
                child: itemList(
                    Icon(
                      Icons.category,
                      color: Colors.black,
                    ),
                    'Category'),
              ),
              Divider(
                height: 0,
                indent: 12,
                color: Colors.black12,
                endIndent: 12,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SetUpPage(itemName: 'Employes',)));
                },
                child: itemList(
                    Icon(
                      Icons.people,
                      color: Colors.black,
                    ),
                    'Employes'),
              ),
              Divider(
                height: 0,
                indent: 12,
                color: Colors.black12,
                endIndent: 12,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SetUpPage(itemName: 'Tables',)));
                },
                child: itemList(
                    Icon(
                      Icons.table_chart_rounded,
                      color: Colors.black,
                    ),
                    'Tables'),
              ),
              Divider(
                height: 0,
                indent: 12,
                color: Colors.black12,
                endIndent: 12,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SetUpPage(itemName: 'Payment Method',)));
                },
                child: itemList(
                    Icon(
                      Icons.payment,
                      color: Colors.black,
                    ),
                    'Payment Method'),
              ),
              Divider(
                height: 0,
                indent: 12,
                color: Colors.black12,
                endIndent: 12,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SetUpPage(itemName: 'All Charges',)));
                },
                child: itemList(
                    Icon(
                      Icons.bookmarks_rounded,
                      color: Colors.black,
                    ),
                    'All Charges'),
              ),
              Divider(
                height: 0,
                indent: 12,
                color: Colors.black12,
                endIndent: 12,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SetUpPage(itemName: 'Manage',)));
                },
                child: itemList(
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    'Manage'),
              ),
              Divider(
                height: 0,
                indent: 12,
                color: Colors.black12,
                endIndent: 12,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SetUpPage(itemName: 'Restaurent Info',)));
                },
                child: itemList(
                    Icon(
                      Icons.restaurant_menu_rounded,
                      color: Colors.black,
                    ),
                    'Restaurent Info'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back)),
        titleSpacing: 0.0,
        title: Text('Setup'),
      ),
      body: Center(
        child: Text(widget.itemName.toString()),
      ),
      /* appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back)),
        title: Text('Setup'),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15,bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Drawer()
                Icon(Icons.people),
                Text('Azizul Hakim'),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(40),
        ),
      ), */
    );
  }

//reusuable funcion
  ListTile itemList(Icon icon, String name) {
    return ListTile(
      horizontalTitleGap: 0,
      leading: icon,
      title: Text(name),
    );
  }

// PreferredSize _appBar(){
//   return PreferredSize(

//     child: child,
//     preferredSize: preferredSize)

// }

/*
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          Container(),
        ],
        centerTitle: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildTopAppbar(context),
                Container(
                  height: 1,
                  color: Colors.black54,
                ),
                buildBottomAppBar(context)
              ],
            ),
          ),
        ));
  }



  Row buildTopAppbar(BuildContext context) {
    return Row(
      children: [
        AppBar(
          leading: InkWell(
              onTap: () {
                //back to home page.
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back)),
          title: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              'Setup',
              style: TextStyle(fontSize: 18.sp),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                  onTap: () {
                    _launchUrl("www.mediasoftbd.com");
                  },
                  child: Image.asset(
                    'assets/images/mediasoft_logo.png',
                    width: .3.sw,
                  )),
            )
          ],
        )
      ],
    );
  }




  Row buildBottomAppBar(BuildContext context) {
    return Row(
      children: [
        ListTile(
          leading: Drawer(),
        )
      ],
    );
  }
*/
/*
  AppBar buildAppBar() {
    return AppBar(
      centerTitle: false,
      titleSpacing: 0.0,
      elevation: 0,
      toolbarHeight: .15.sh,
      flexibleSpace: SafeArea(
        child: Column(
          children: [
            buildTopAppBar(),
            buildBottomAppBar()
          ],
        ),
      ),
    );
  }

 AppBar buildTopAppBar() {
    return AppBar(
      leading: InkWell(
          onTap: () {
            //back to home page.
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back)),
      title: Padding(
        padding: const EdgeInsets.only(left: 0),
        child: Text(
          'Setup',
          style: TextStyle(fontSize: 18.sp),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
              onTap: () {
                _launchUrl("www.mediasoftbd.com");
              },
              child: Image.asset(
                'assets/images/mediasoft_logo.png',
                width: .3.sw,
              )),
        )
      ],
    );
  }

Row buildBottomAppBar(){
    return Row(
      
    );
  }
*/

}
