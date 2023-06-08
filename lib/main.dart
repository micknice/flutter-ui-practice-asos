import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_practice/carousel.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // statusBarColor: Colors.transparent, // transparent status bar
    statusBarColor: Colors.grey, // transparent status bar
  ));
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool light = true;

  @override
  Widget build(BuildContext context) {
    const tileDensity = -2.5;
    const divHeight = 1.8;
    const tileFontSize = 14.0;
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          shadowColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
              color: Colors.black87,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.black87,
            ),
          ],
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1415025148099-17fe74102b28?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1275&q=80'))),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'sWeG',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -6.0,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            'Save, shop and view orders',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.0,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Text(
                                'Sign in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.0,
                                ),
                              ),
                              label: const Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 10,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              leading: const Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
              title: const Text(
                'HOME',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: tileFontSize),
              ),
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 235,
                  height: divHeight,
                  child: Material(color: Colors.grey.shade200),
                ),
              ],
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              leading: const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              title: const Text(
                'BAG',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: tileFontSize),
              ),
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 235,
                  height: divHeight,
                  child: Material(color: Colors.grey.shade200),
                ),
              ],
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              leading: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
              title: const Text(
                'SAVED ITEMS',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: tileFontSize),
              ),
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 235,
                  height: divHeight,
                  child: Material(color: Colors.grey.shade200),
                ),
              ],
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              leading: const Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: const Text(
                'MY ACCOUNT',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: tileFontSize),
              ),
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 235,
                  height: divHeight,
                  child: Material(color: Colors.grey.shade200),
                ),
              ],
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              leading: const Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text(
                'APP SETTINGS',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: tileFontSize),
              ),
              onTap: () {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 235,
                  height: divHeight,
                  child: Material(color: Colors.grey.shade200),
                ),
              ],
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              leading: const Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
              title: const Text(
                'HELP & FAQS',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: tileFontSize),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 7,
              child: Material(color: Colors.grey.shade200),
            ),
            ListTile(
                visualDensity:
                    const VisualDensity(horizontal: 0, vertical: tileDensity),
                leading: const Icon(
                  Icons.dark_mode_outlined,
                  color: Colors.black,
                ),
                title: const Text(
                  'DARK MODE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: tileFontSize),
                ),
                trailing: Switch(
                    value: light,
                    activeColor: Colors.black,
                    onChanged: (bool value) {
                      setState(() {
                        light = value;
                      });
                    })),
            SizedBox(
              height: 7,
              child: Material(color: Colors.grey.shade200),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                visualDensity:
                    const VisualDensity(horizontal: 0, vertical: tileDensity),
                title: const Text(
                  'MORE SWEG',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: tileFontSize,
                      color: Colors.grey),
                ),
                onTap: () {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: divHeight,
                  child: Material(color: Colors.grey.shade200),
                ),
              ],
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              title: const Text(
                'Unlimited Next Day Delivery',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: tileFontSize,
                    color: Colors.black87),
              ),
              onTap: () {},
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              title: const Text(
                'Our environmental & ethics policy',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: tileFontSize,
                    color: Colors.black87),
              ),
              onTap: () {},
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              title: const Text(
                'Gift Vouchers',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: tileFontSize,
                    color: Colors.black87),
              ),
              onTap: () {},
            ),
            ListTile(
              visualDensity:
                  const VisualDensity(horizontal: 0, vertical: tileDensity),
              title: const Text(
                'About us',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: tileFontSize,
                    color: Colors.black87),
              ),
              onTap: () {},
            ),
          ],
        )),
        body: const ManuallyControlledSlider(),
      ),
    );
  }
}
