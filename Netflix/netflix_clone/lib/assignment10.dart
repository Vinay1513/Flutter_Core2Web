import 'dart:ui';

import 'package:flutter/material.dart';

class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NETFLIX"),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 197, 39, 28),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'MENU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              textColor: Colors.white,
              onTap: () {
                // Implement action when Home is pressed
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('My List'),
              textColor: Colors.white,
              onTap: () {
                // Implement action when My List is pressed
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Favourites'),
              textColor: Colors.white,
              onTap: () {
                // Implement action when Genres is pressed
                Navigator.pop(context);
              },
            ),
            // Add more items as needed
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "MOVIES",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  'https://images.ottplay.com/posters/Uri:_The_Surgical_Strike_2019_movie_tmdb_poster_1.jpg',
                  height: 397,
                  width: 270,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  'https://m.media-amazon.com/images/M/MV5BMDQwOTI3NTMtZjA0My00M2E3LThmODUtODdiNTQ3ZjNiNGE3XkEyXkFqcGdeQXVyNTM2NTg3Nzg@._V1_.jpg',
                  height: 400,
                  width: 270,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.network(
                  'https://udaipurtimes.com/static/c1e/client/74416/migrated/8bcfde29ee5e5aeee2a1c6d7b7c14969.jpg',
                  height: 400,
                  width: 270,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Text(
            "WEB SERIES",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAsYFQ3CDrseAjCEaUw6vxYXyFlK7UdCx1WA&usqp=CAU',
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaje--EirMDa3aQanftLe2e-45TThb2glpNQ&usqp=CAU',
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8EGOaHGKHd90R2CfAqIDWPqJiCDVMCkMsRL4ZxI2HBXiGwmJph7iBsTfcv1SfjJJN1VI&usqp=CAU',
                  height: 200,
                  width: 150,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "MOST POPULAR",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/en/thumb/d/df/3_idiots_poster.jpg/220px-3_idiots_poster.jpg',
                  height: 190,
                  width: 150,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.network(
                  'https://m.media-amazon.com/images/M/MV5BMGQ0YThkOGUtNzVmNS00YjY3LTllYjEtODk0MTg3MTQ0NjZlXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg',
                  height: 200,
                  width: 150,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqeSndDrN7PUTrAkFMS5S__raTMR9GDygr-g&usqp=CAU',
                  height: 190,
                  width: 150,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
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
              Icons.download,
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
