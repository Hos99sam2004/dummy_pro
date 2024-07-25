import 'package:dummy_pro/Testat/Ecommerce_Screen/Models/Brand.dart';
import 'package:dummy_pro/Testat/Ecommerce_Screen/Models/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EcommerceScreen extends StatefulWidget {
  const EcommerceScreen({super.key});

  @override
  State<EcommerceScreen> createState() => _EcommerceScreenState();
}

class _EcommerceScreenState extends State<EcommerceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 40.0, left: 15, right: 15, bottom: 20),
              child: Column(
                children: [
                  Toppart(),
                  Brandes(),
                  Row(children: [
                    Text(
                      " New Arrival",
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ]),
                  Cards(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container Cards() {
    return Container(
      height: 600,
      width: double.infinity,
      child: GridView.builder(
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 300),
        itemCount: Cardslist.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey[200],
            ),
            width: 300,
            height: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    "${Cardslist[index].image}",
                    height: 220,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  Cardslist[index].name,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "\$\$${Cardslist[index].price}",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container Brandes() {
    return Container(
      height: 70,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: brandList.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  height: 70,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.white,
                        child: Image.asset(
                          "${brandList[index].image}",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(brandList[index].name),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            );
          }),
    );
  }

  Container Toppart() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.bag),
              ),
            ],
          ),
          Text(
            "Hallo",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "Welcome to laza",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.mic,
                      size: 30,
                    )),
              ),
            ],
          ),
          Row(children: [
            Text(
              " Choose Brand ",
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                "View All",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ]),
          // SizedBox(
          //   height: 20,
          // ),
        ],
      ),
    );
  }
}
