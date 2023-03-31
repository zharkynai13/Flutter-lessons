import 'package:flutter/material.dart';


class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         SizedBox(
            width: double.infinity,
            height: 350,  
          child: Stack(
            children: [
              ListView.builder(
              scrollDirection: Axis.horizontal,
             itemCount: 7,
              itemBuilder: (BuildContext context, index) {
                return const
                 DemoWidget();
                  },
               ),
               Row(
                children: const [
                   SizedBox(width: 50,),
                  DemoBlackKey(),
                   SizedBox(width: 20,),
                  DemoBlackKey(),
                   SizedBox(width: 180,),
                  DemoBlackKey(),
                  SizedBox(width:20,),
                  DemoBlackKey(),
                ],
               ),    
            ]
          ),
        
                 
      )],  
     ),
    );
  }
}

class DemoBlackKey extends StatefulWidget {
  const DemoBlackKey({
    super.key,
  });

  @override
  State<DemoBlackKey> createState() => _DemoBlackKeyState();
}

class _DemoBlackKeyState extends State<DemoBlackKey> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown:(details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp:(details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
        child: Container(
         color: isPressed ? Colors.grey[700]: Colors.black,
         width: 60,
         height: 200,
        ),
      ),
    );
  }
}

class DemoWidget extends StatefulWidget {
  const DemoWidget({
    super.key,
  });

  @override
  State<DemoWidget> createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details){
        setState(() {
          isPressed = true;
          
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
        child: Container(
         width: 80,
         height: 50,
         decoration: BoxDecoration(
          color: isPressed ? Colors.grey[300] :  Colors.white,
          border: Border.all(color: Colors.black, width: 3)
        ),
                ),
      ),
    );
  }
}