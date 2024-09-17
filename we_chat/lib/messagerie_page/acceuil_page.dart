import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const dColor = Color.fromRGBO(16, 107, 168, 1);
const dWithe = Colors.white;
const dBlack = Colors.black;

class AcceuilPage extends StatelessWidget {
  const AcceuilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dColor,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: dWithe,
              size: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: dWithe,
                size: 30,
              )),
        ],
        // title: const Text('We.chat'),
      ),
      body: Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          Expanded(
            child: Container(
              color: Colors.pink,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: dColor,
        child: const Icon(
          Icons.edit,
          color: dWithe,
          size: 20,
        ),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final List menuItems = ["All", "Groups", "Online", "Calls"];
  MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dColor,
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 55),
                child: Text(
                  item,
                  style: GoogleFonts.inter(
                    color: Colors.white60,
                    fontSize: 23,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class FavoriteSection extends StatelessWidget {
   FavoriteSection({super.key});

  // ignore: non_constant_identifier_names
  final List favoriteContacts = [
    {
      'name': "Idolo",
      'profile': 'images/avatar/mafieu.jpg'

    },
    {
      'name': "Idolo1",
      'profile': 'images/avatar/mafieu2.jpg'

    },
    {
      'name': "Idolo2",
      'profile': 'images/avatar/mafieu3.jpg'

    },
    {
      'name': "Idolo3",
      'profile': 'images/avatar/mafieu4.jpg'

    },
    {
      'name': "Women",
      'profile': 'images/avatar/mafieu5.jpg'

    },
    {
      'name': "madame",
      'profile': 'images/avatar/mafieu6.jpg'

    },
    {
      'name': "monsieur",
      'profile': 'images/avatar/mafieu7.jpg'

    },
    

    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dColor,
      child: Container(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 15),
        decoration: const BoxDecoration(
          color: dWithe,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40)
          )
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Favorite contacts",
                    style: GoogleFonts.inter(
                      //color: Colors.white60,
                      color: dColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                const IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    //color: Colors.white60,
                    color: dColor,
                    size: 20,
                  ), onPressed: null,
                  ),
            ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: favoriteContacts.map((favorite) {
                  return Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: dColor,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(radius: 20,
                          backgroundImage: AssetImage(favorite['profile']),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          favorite['name'],
                          style: GoogleFonts.inter(
                            color: dColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        
                        )
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
