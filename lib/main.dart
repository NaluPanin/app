import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MovieGridScreen(),
    );
  }
}

class MovieGridScreen extends StatelessWidget {
  final List<String> popularMovies = [
    'https://m.media-amazon.com/images/M/MV5BZmEyYjE4NWUtODkxZS00ODVmLTgxOGQtYWI4YjUxOWY5N2ViXkEyXkFqcGc@._V1_.jpg',
    'https://m.media-amazon.com/images/S/pv-target-images/c6fb58055b3649eae203ec37aa4825594dad40fcaa8360bd2a09a9cffb7c7917.jpg',
    'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781524877552/puss-in-boots-the-last-wish-junior-novel-9781524877552_hr.jpg',
    'https://m.media-amazon.com/images/M/MV5BMTc0MTM3NzEzMl5BMl5BanBnXkFtZTcwNjE5MTU3NQ@@._V1_FMjpg_UX1000_.jpg',
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Movies')),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: popularMovies.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      // Navigate to the details screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetailScreen(
                            imageUrl: popularMovies[index],
                          ),
                        ),
                      );
                    },
                    child: Image.network(
                      popularMovies[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MovieDetailScreen extends StatelessWidget {
  final String imageUrl;

  MovieDetailScreen({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Movie Details')),
      body: Center(
        child: Column(
          children: [
            Image.network(imageUrl),
            SizedBox(height: 20),
            Text(
              'Movie details go here',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}














// import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }



// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _count = 0;
//   void _increase(){
//     setState(() {
//       _count++;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text("ID Card", 
//         style: TextStyle(
//           fontSize: 30,
//           fontWeight: FontWeight.bold,
//           color: Colors.white,
//         ),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       body:  Container(
//         color: Color(0xFFEB84D1),
    
//         width: 500,
//         height: 300,
//         child: Column(
//           children: [
//           const Row(
//             children: [
//               Padding(
//                   padding: EdgeInsets.only(left: 25 , top: 10),
//                   child: Text("STUDENT",
//                   style: TextStyle(
//                     fontSize: 35,
//                     color: Colors.green,
//                     fontWeight: FontWeight.bold
//                   ),
//                   ),
//                 ),
//             ],
//           ),
//           Divider( color: Colors.black,),
//           const Row(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: 25 , top: 10),
//                 child: Text("I DENTITY CARD",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold
//                 ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 25),
//             child: Row(
//               children: [
//                 const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                   SizedBox(height: 10,),
//                    Text("Student At"),
//                    Text("INTERNATIONAL UNIVERSITY"),
//                    SizedBox(height: 10,),
//                    Text("Name"),
//                    Text("NAILDENLY"),
//                    SizedBox(height: 10,),
//                    Text("Born"),
//                    Text("15/11/2005"),
//                 ],
            
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Image.network(
//                       "https://static.vecteezy.com/system/resources/previews/002/002/403/non_2x/man-with-beard-avatar-character-isolated-icon-free-vector.jpg"
//                       ,width: 150,
//                       height: 150,
//                       ),
//                       Text("$_count",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold
//                       ),
                  
                      
//                       )
//                   ],
            
//                 )
//               ],
//             ),
//           )
          
        
        
//           ],
        
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         hoverColor: Colors.blue,
//         // elevation: 10,
//         // hoverElevation: 10,
//         // focusColor: Colors.blue,
//         child: Text("Add"),
//         foregroundColor: Colors.red,
//         backgroundColor: Colors.grey,
//          onPressed: _increase,
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Simple Stack Example")),
//         body: Stack(
//           fit: StackFit.expand,
//           children: [
//             Container(
//               color: Colors.green,
//             ),
//             // First layer: Blue box
//             // Container(
//             //   width: 200,
//             //   height: 200,
//             //   color: Colors.blue, // A big blue box
//             // ),
//             // Second layer: Positioned red box
//             Positioned(
//               // top: 50,
//               // left: 50,
//               right: 100,
//               child: Container(
//                 width: 200,
//                 height: 100,
//                 color: Colors.red, // A smaller red box on top of the blue box
//               ),
//             ),
//             // Third layer: Some text at the bottom
//             const Positioned(
//               bottom: 190,
//               // top: 100,
//               // right: 20,
//               // left: 20,
//               child: Text(
//                 'Stacking Text!',
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
