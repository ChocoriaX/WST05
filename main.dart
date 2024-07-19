import 'package:flutter/material.dart';
import 'product.dart';

void main() {
  runApp(const MyUI65119190());
}

class MyUI65119190 extends StatelessWidget {
  const MyUI65119190({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UI65119190(),
    );
  }
}

class UI65119190 extends StatefulWidget {
  const UI65119190({super.key});

  @override
  State<UI65119190> createState() => _UI65119190State();
}

class _UI65119190State extends State<UI65119190> {
  // List<Widget> generate() { // 2.1
  //   List<Widget> list = []; // 2.2
  //   for (var i = 0; i < 10; i = i + 1) {
  //     Widget widget;
  //     if (i % 2 == 0) { // 3.1
  //       widget = Container(
  //         decoration: const BoxDecoration( // 3.2
  //           color: Colors.grey, // 3.3
  //         ),
  //         width: MediaQuery.of(context).size.width * 0.25, // 3.4
  //         margin: const EdgeInsets.all(3),
  //         child: Text(
  //           'Line $i',
  //           style: const TextStyle(fontSize: 16, color: Colors.black), // 3.5 // 3.6
  //         ),
  //       );
  //     } else {
  //         widget = Container(
  //           decoration: const BoxDecoration(
  //             color: Colors.blue,
  //           ),
  //           width: MediaQuery.of(context).size.width * 0.25,
  //           margin: const EdgeInsets.all(3),
  //           child: Text(
  //             'Line $i',
  //             style: const TextStyle(fontSize: 16, color: Colors.white),
  //           ),
  //         );
  //     }
  //     list.add(widget); // 2.3 // 2.4
  //   }
  //   return list; // 2.4-2
  // }
  
  @override
  Widget build(BuildContext context) {
    List<Product> products = Product.loadProduct(); // 6.1
    return Scaffold(
      appBar: AppBar(
        title: const Text('65119190'), // 2.5
        backgroundColor: Colors.cyan, // 2.6
      centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10), // 2.7 //6.2
        child: ListView.builder(
          itemCount: products.length, // 6.3
          itemBuilder: (context, index) {
            Product product = products[index];
            return Container(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: Text('${product.title} (\$${product.price})'), // 6.4 
                subtitle: Text(product.description.substring(0, 100)), // 6.5
                leading: Image.network(product.imageUrl), // 6.6
              ),
            );
          },


          // //children: generate(); // 2.8
          // children: [ 
          //   const ListTile(
          //     title: Center( // 4.1
          //       child: Text(
          //         'Aphichet Krodsuea',
          //         style: TextStyle(
          //           fontSize: 30,
          //         ),
          //       ),
          //     ),
          //   ),
          //   ListTile(
          //     title: Image.network( // 4.2
          //       'https://tse1.mm.bing.net/th?q=silly%20cat%20pfp%20suit',
          //       height: 150, // 4.4 // 4.5
          //     ),
          //   ),
          //   const ListTile(
          //     title: Text(
          //       'Research Area',
          //       style: TextStyle(
          //         color: Colors.lightBlue, fontWeight: FontWeight.w400 // 4.6
          //       ),
          //     ),
          //     subtitle: // 4.7
          //     Text('Machine Leaning basrd Traffic Monitoring System'),
          //   ),
          //   ListTile(
          //     leading: Image.network( // 4.8
          //       'https://img.icons8.com/?size=100&id=53383&format=png',
          //       height: 45,
          //     ),
          //     title: const Text(
          //       'Address',
          //       style: TextStyle(
          //         color: Colors.lightBlue, fontWeight: FontWeight.w400
          //       ),
          //     ),
          //     subtitle:
          //     const Text('School of Informatics, WU, NST, Thailand'),
          //   ),
          // ],
        ),
      ),
    );
  }
}
