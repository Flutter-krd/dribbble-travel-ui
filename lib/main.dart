import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
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
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(vertical: 30),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1.5),
                    borderRadius: const BorderRadius.all(Radius.circular(25))),
                child: const Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.search)),
                    Text('search',
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 20,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w600,
                        )),
                    Spacer(),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
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
              )
            ],
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
}
