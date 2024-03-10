import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.laptop), label: 'My Desk'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Menu'),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: 'Orders'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
          ],
          type: BottomNavigationBarType.fixed,
        ),
        appBar: AppBar(
          title: Center(
            child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [BoxShadow(blurRadius: 1.5)]),
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search Resource',
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Meeting',
            ),
            Tab(
              text: 'Workstation',
            ),
            Tab(
              text: 'Order Food',
            )
          ]),
        ),
        body: TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 190,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Container(
                    width: 190,
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 150,
                      height: 170,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                    ),
                  ),
                ],
              )
            ],
          ),
          const Column(
            children: [Text('data')],
          ),
          const Column(
            children: [Text('data')],
          )
        ]),
      ),
    );
  }
}
