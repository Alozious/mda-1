import 'package:flutter/material.dart';
import 'package:mda/searchpage.dart';

class ItemModel {
  bool expanded;
  bool canTapOnHeader;
  String headerItem;
  String discription;
  Color colorsItem;
  String img;

  ItemModel(
      {this.expanded = false,
      this.canTapOnHeader= true,
      required this.headerItem,
      required this.discription,
      required this.colorsItem,
      required this.img});
}

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.pink,
        elevation: 0,
        title: const Text("FREQUENTLY ASKED QUESTIONS"),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: itemData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: const Duration(milliseconds: 500),
              dividerColor: const Color.fromARGB(255, 228, 0, 114),
          
              elevation: 1,
              
              children: [
                //Expansion pannel
                ExpansionPanel(
                
                  body: Container(
                  
                    //decorating the expansion panel
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 2.0, color: Colors.blue)
                        ),
                        
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipOval(
                          child: CircleAvatar(
                            child: Image.asset(
                              itemData[index].img,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          itemData[index].discription,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15,
                              letterSpacing: 0.3,
                              height: 1.3),
                        ),
                      ],
                    ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    
                    return Container(
                  
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        itemData[index].headerItem,
                        style: TextStyle(
                          color: itemData[index].colorsItem,
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                  isExpanded: itemData[index].expanded,
                  canTapOnHeader: true,
                  
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  itemData[index].expanded = !itemData[index].expanded;
                });
              },
            );
          },
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
        headerItem: 'What is MDA?',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'Is malnutrition a disease?',
        discription:
            "Malnutrition increases the risk of developing an infection. Its not a disease by itsself but weakens the immune system that furthur adds to the riskof developing other infectious diseases.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'How to create an account?',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'How to scan a childs hand?',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'What is stunting?',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'Android',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'Android',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'Android',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'Android',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'Android',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'Android',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'Android',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
    ItemModel(
        headerItem: 'Android',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.blue,
        img: 'assets/images/android_img.png'),
  ];
}


