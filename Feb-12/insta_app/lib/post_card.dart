import 'package:flutter/material.dart';
import 'package:insta_app/profile.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  IconData unliked = Icons.favorite_border_outlined;
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  bool _isPost3Liked = false;

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
    'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Anil_Kapoor_1.jpeg/170px-Anil_Kapoor_1.jpeg',
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
                          onPressed: () {
                            setState(() {
                              _isPost1Liked = !_isPost1Liked;
                            });
                          },
                          icon: _isPost1Liked
                              ? const Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.red,
                                )
                              : const Icon(
                                  Icons.favorite_outline_rounded,
                                  color: Colors.white,
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
                            onPressed: () {
                              setState(() {
                                _isPost2Liked = !_isPost2Liked;
                              });
                            },
                            icon: _isPost2Liked
                                ? const Icon(
                                    Icons.favorite_rounded,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_outline_rounded,
                                    color: Colors.white,
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
                            onPressed: () {
                              setState(() {
                                _isPost3Liked = !_isPost3Liked;
                              });
                            },
                            icon: _isPost3Liked
                                ? const Icon(
                                    Icons.favorite_rounded,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_outline_rounded,
                                    color: Colors.white,
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
