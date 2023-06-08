import 'package:flutter/material.dart';

class CarouselHome extends StatelessWidget {
  const CarouselHome({super.key});

  @override
  Widget build(BuildContext context) {
    const miniGalleryImgHeight = 220.0;
    const miniGallerySubtitlePadding = 5.0;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                    height: 150,
                    width: 360,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 37, 95),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'UP TO 50% OFF',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 20),
                              ),
                              Text(
                                'SUMMER-SWEGGY STUFF',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 20),
                              ),
                              Text(
                                'INCL. CASH, MONEY & PAPER',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 12),
                              ),
                              Text(
                                'Limited time only. Selected styles marked down',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 360,
                        height: 516,
                        child: Stack(
                          children: [
                            Image(
                              fit: BoxFit.fitWidth,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1602107536707-a4a8111d3151?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80'),
                            ),
                            // top frame border purple
                            Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                    width: 332,
                                    height: 7,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 152, 82, 238))))),
                            //  frame border peach
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                    width: 332,
                                    height: 7,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 229, 159, 200))))),
                            // left frame border red
                            SizedBox(
                                width: 7,
                                height: 516,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 37, 95)))),
                            // right frame border green
                            Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                    width: 7,
                                    height: 516,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 171, 255, 61))))),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'HOLIDAY SHOP',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ),
                      Text(
                        'Shop now',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //pink
                          Column(
                            children: [
                              const SizedBox(
                                height: miniGalleryImgHeight,
                                width: 162,
                                child: Image(
                                    fit: BoxFit.fitWidth,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1516826957135-700dedea698c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(miniGallerySubtitlePadding),
                                child: Text(
                                  'PINK',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              ),
                              Text(
                                'Man up its 2023',
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          //time
                          Column(
                            children: [
                              const SizedBox(
                                height: miniGalleryImgHeight,
                                width: 162,
                                child: Image(
                                    fit: BoxFit.fitWidth,
                                    image: NetworkImage(
                                        'https://plus.unsplash.com/premium_photo-1661373610721-87ae9c4e31ef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(miniGallerySubtitlePadding),
                                child: Text(
                                  'TIME',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              ),
                              Text(
                                'Time you got a watch',
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // rustic
                          Column(
                            children: [
                              const SizedBox(
                                height: miniGalleryImgHeight,
                                width: 162,
                                child: Image(
                                    fit: BoxFit.fitWidth,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1540924782561-3fc182603b86?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80')),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(miniGallerySubtitlePadding),
                                child: Text(
                                  'RUSTIC STYLE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              ),
                              Text(
                                'Like this guy ^ idk',
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          // lol
                          Column(
                            children: [
                              const SizedBox(
                                height: miniGalleryImgHeight,
                                width: 162,
                                child: Image(
                                    fit: BoxFit.fitWidth,
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1625178551411-62eea1351c82?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTM3fHxtZW5zJTIwZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=400&q=60')),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(miniGallerySubtitlePadding),
                                child: Text(
                                  'LOL',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                              ),
                              Text(
                                'Sweg overload',
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
