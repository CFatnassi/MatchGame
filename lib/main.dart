import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home :Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 184, 95),
      appBar: AppBar(
        title: Text('match the pics',
        style: TextStyle(
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        ),
        backgroundColor: const Color.fromARGB(255, 106, 91, 71),

      ),
      body: ImagePage(),
      
    ),
  ));
}
class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber=1;
  int rightImageNumber=2;
  void changeImage(){
    leftImageNumber = Random().nextInt(8)+1;
    rightImageNumber = Random().nextInt(8)+1;
                
  }
  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
        leftImageNumber == rightImageNumber ? 'U did it !' :
        'Try Again...',
        style: TextStyle(
          fontSize: 42.0,
          color: Colors.white,
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                     changeImage();
                      });
                  },
                  
                  child: Image.asset('images/image-$leftImageNumber.png'),
                  ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeImage();
                    });
                  },
                  child: Image.asset('images/image-$rightImageNumber.png'),
                  ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}