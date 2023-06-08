import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget  SwegDrawer(double tileDensity, double divHeight, double tileFontSize) {
  return Drawer(
      child: ListView(
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1673371093333-0da9ad6b2e32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'))),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'sWeG',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -6.0,
                    ),
                  ),
                  const Text(
                    'Save, shop and view orders',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.0,
                    ),
                  ),
                  TextButton.icon(
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
                ],
              )),
            )
          ],
        ),
      ),
      ListTile(
        visualDensity:
             VisualDensity(horizontal: 0, vertical: tileDensity),
        leading: const Icon(
          Icons.home_filled,
          color: Colors.black,
        ),
        title:  Text(
          'HOME',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: tileFontSize),
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
             VisualDensity(horizontal: 0, vertical: tileDensity),
        leading: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
        title:  Text(
          'BAG',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: tileFontSize),
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
             VisualDensity(horizontal: 0, vertical: tileDensity),
        leading: const Icon(
          Icons.favorite_border_outlined,
          color: Colors.black,
        ),
        title:  Text(
          'SAVED ITEMS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: tileFontSize),
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
             VisualDensity(horizontal: 0, vertical: tileDensity),
        leading: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        title:  Text(
          'MY ACCOUNT',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: tileFontSize),
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
             VisualDensity(horizontal: 0, vertical: tileDensity),
        leading: const Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title:  Text(
          'APP SETTINGS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: tileFontSize),
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
             VisualDensity(horizontal: 0, vertical: tileDensity),
        leading: const Icon(
          Icons.info_outline,
          color: Colors.black,
        ),
        title:  Text(
          'HELP & FAQS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: tileFontSize),
        ),
        onTap: () {},
      ),
      SizedBox(
        height: 7,
        child: Material(color: Colors.grey.shade200),
      ),
      ListTile(
          visualDensity:
               VisualDensity(horizontal: 0, vertical: tileDensity),
          leading: const Icon(
            Icons.dark_mode_outlined,
            color: Colors.black,
          ),
          title: Text(
            'DARK MODE',
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: tileFontSize),
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
  ));
}
