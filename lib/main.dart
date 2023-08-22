import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _formKey  = GlobalKey<FormState>();
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            alignment: Alignment.center,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'What do you \nwant to  discover?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/e/eb/Rubio_Circle.png',
                      width: 50,
                      height: 50,
                    )
                  ],
                ),
        
                // Create Search Bar
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: TextFormField(
                    controller: searchController,
                    validator: (value) => value!.isEmpty ? 'Enter a search term' : null,
                      decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    prefixIcon:  const Icon(Icons.search),
                    suffixIcon:  const Icon(Icons.filter_list),
                  )),
                ),
        
                // Create Categries section
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'categories',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
        
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      generateSomething(
                          text: 'Name 1',
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/e/eb/Rubio_Circle.png'),
                      generateSomething(
                          text: 'name 2',
                          image:
                              'https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png'),
                      generateSomething(
                          text: 'Name 1',
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/e/eb/Rubio_Circle.png'),
                      generateSomething(
                          text: 'name 2',
                          image:
                              'https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png'),
                      generateSomething(
                          text: 'Name 1',
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/e/eb/Rubio_Circle.png'),
                      generateSomething(
                          text: 'name 2',
                          image:
                              'https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png'),
                      generateSomething(
                          text: 'Name 1',
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/e/eb/Rubio_Circle.png'),
                      generateSomething(
                          text: 'name 2',
                          image:
                              'https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png'),
                      generateSomething(
                          text: 'Name 1',
                          image:
                              'https://upload.wikimedia.org/wikipedia/commons/e/eb/Rubio_Circle.png'),
                      generateSomething(
                          text: 'name 2',
                          image:
                              'https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png'),
                    ],
                  ),
                ),
        
                const SizedBox(
                  height: 20,
                ),
        
                // Create Roubded images
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      generateImages(
                        context: context,
                        location: 'Grand Canyon',
                        rating: 4.5,
                        isFav: false,
                        image: 'image1.jpeg',
                      ),
                      generateImages(
                        context: context,
                        location: 'New York',
                        rating: 4.5,
                        isFav: true,
                        image: 'image2.jpeg',
                      ),
                      generateImages(
                        context: context,
                        location: 'Tokyo',
                        rating: 4.5,
                        isFav: false,
                        image: 'image1.jpeg',
                      ),
                      generateImages(
                        context: context,
                        location: 'Grand Canyon',
                        rating: 4.5,
                        isFav: true,
                        image: 'image2.jpeg',
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                // Create a button
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                     _formKey.currentState!.validate();
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget generateSomething({required String text, required String image}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(30),
      ),
      width: 150,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            image,
            width: 35,
            height: 35,
          ),
          Text(text),
        ],
      ),
    );
  }

  Widget generateImages({
    required BuildContext context,
    required String location,
    required double rating,
    required bool isFav,
    required String image,
  }) {
    IconData? resultIcon;

    if (isFav) {
      resultIcon = Icons.favorite;
    } else {
      resultIcon = Icons.favorite_border;
    }

    return Stack(
      children: [
        Container(
          height: 500,
          width: MediaQuery.of(context).size.width * 0.60,
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(45),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 85,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                Text(
                  '$rating',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Icon(
              resultIcon,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.55,
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.pin_drop_outlined,
                      color: Colors.white, size: 30),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(location,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w100,
                      )),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
