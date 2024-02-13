import 'package:flutter/material.dart';
import 'package:insta_app/profile.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  IconData unliked = Icons.favorite_border_outlined;

  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 4) {
        // Navigate to the profile page when the "Person" icon is clicked
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfilePage(
              profileName:
                  'Vinay Shirsat', // Replace with the actual profile name
              imageList: yourImageList, // Pass the list of images
            ),
          ),
        );
      }
    });
  }

  List<String> yourImageList = [
    'data:image/jpeg;base64,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',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyqbjObZvTMzqUv23lMHx3cHFkh2ckGDVqBA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOk1KF8XZFKg1ZyJMCyQwF1IvGPFvaoHYuNw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5Fv09cTuUBVKuzeXYe8HhaaA3xjhmqrxBhQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBxl4EQtXV7f6k2UjIxH5PamYygl2cs6V9Gg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0_VGvR93SZgBTu_YfKR-rx0G9J50Pq93lpg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB0b-R8SSWZg1R5c4ZwS_ps9260MMu7ztJroWGUv0Aj0H3T69Ldy7YFbVn2aGMPOwf8V4&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3LQrovFTHPWSiwlju8jPCogOZ1mg2tnzEWA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXEjAg617ncBf00iluMVUTCMP5fdX04kbsWg&usqp=CAU'
    // Add more image URLs as needed
  ];
  void changeLiked() {
    setState(() {
      if (unliked == Icons.favorite_border_outlined) {
        unliked = Icons.favorite;
      } else {
        unliked = Icons.favorite_border_outlined;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: const Icon(
              Icons.favorite_outline_rounded,
              color: Colors.red,
              size: 30,
            ),
          ),
          Icon(
            Icons.send,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                height: 100, // Adjust the height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: yourImageList
                      .length, // Replace with the actual number of images
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(yourImageList[index]),
                        radius: 30,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://cdn.pixabay.com/photo/2023/09/01/23/33/motorcycles-8227939_640.jpg',
                      width: double.infinity,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: changeLiked,
                          icon: Icon(
                            unliked,
                            color: unliked == Icons.favorite
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.comment_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.send),
                          color: Colors.white,
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark_outline_outlined,
                            size: 30,
                          ),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Image.network(
                      'https://cdn.pixabay.com/photo/2024/01/16/21/25/copenhagen-8513129_640.jpg',
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: changeLiked,
                            icon: Icon(
                              unliked,
                              color: unliked == Icons.favorite
                                  ? Colors.red
                                  : Colors.white,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment_outlined,
                                color: Colors.white,
                              )),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send),
                            color: Colors.white,
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark_outline_outlined,
                              size: 30,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Image.network(
                      'https://cdn.pixabay.com/photo/2024/01/29/20/40/cat-8540772_640.jpg',
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: changeLiked,
                            icon: Icon(
                              unliked,
                              color: unliked == Icons.favorite
                                  ? Colors.red
                                  : Colors.white,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.comment_outlined,
                                color: Colors.white,
                              )),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send),
                            color: Colors.white,
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark_outline_outlined,
                              size: 30,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
