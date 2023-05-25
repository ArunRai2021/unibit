import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      "assets/images/img.png",
      "assets/images/img_1.png",
      "assets/images/img_2.png",
    ];
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DottedBorder(
                borderType: BorderType.Circle,
                color: const Color(0xffFFC004),
                strokeWidth: 2.0,
                dashPattern: [5, 5],
                child: const Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/game.png"),
                  ),
                ),
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.notifications_none),
              )
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      "Hello,Dipak",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.waving_hand_rounded,
                      color: Color(0xffFFC004),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/two_dice.png")),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Center(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "UNIBIT Fantasy is Live",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          // padding: const EdgeInsets.all(8),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 6,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                          'assets/images/ludo.png')),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "Play Ludo and earn Money",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          for (int i = 0;
                                              i < images.length;
                                              i++)
                                            Align(
                                              widthFactor: 0.5,
                                              child: CircleAvatar(
                                                radius: 18,
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: CircleAvatar(
                                                    radius: 15,
                                                    backgroundImage:
                                                        AssetImage(images[i])),
                                              ),
                                            )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "5,00,000 +",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            "Players",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0XffFFC004),
                                                  Color(0xffFF742F)
                                                ]),
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        child: const Text(
                                          "Play Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
