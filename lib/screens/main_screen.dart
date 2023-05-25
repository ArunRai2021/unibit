import 'package:flutter/material.dart';
import 'package:unibit/screens/contact_screen.dart';
import 'package:unibit/screens/profile_screen.dart';
import 'package:unibit/screens/share_screen.dart';
import 'package:unibit/screens/wallet_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = -1;
  final List<Widget> screens = [
    const ContactScreen(),
    const WalletScreen(),
    const ShareScreen(),
    const ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const ContactScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const ContactScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.headphones,
                          color: currentTab == 0
                              ? Colors.lightBlue
                              : const Color(0xffCCCCCC),
                          size: 30,
                        ),
                        Text(
                          "Contact",
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.lightBlue
                                  : const Color(0xffCCCCCC),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const WalletScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallet,
                          color: currentTab == 1
                              ? Colors.lightBlue
                              : const Color(0xffCCCCCC),
                          size: 30,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                              color: currentTab == 1
                                  ? Colors.lightBlue
                                  : const Color(0xffCCCCCC),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const ShareScreen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          size: 30,
                          color: currentTab == 2
                              ? Colors.lightBlue
                              : const Color(0xffCCCCCC),
                        ),
                        Text(
                          "Share",
                          style: TextStyle(
                              color: currentTab == 2
                                  ? Colors.lightBlue
                                  : const Color(0xffCCCCCC),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const ProfileScreen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 3
                              ? Colors.lightBlue
                              : const Color(0xffCCCCCC),
                          size: 30,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Colors.lightBlue
                                  : const Color(0xffCCCCCC),
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
