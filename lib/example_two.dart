import 'package:flutter/material.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() => isExpanded = !isExpanded);
            },
            child: Center(
              child: AnimatedContainer(
                alignment: Alignment.center,
                height: isExpanded ? 60 : 70,
                width: isExpanded ? 80 : 170,
                decoration: BoxDecoration(
                  color: isExpanded ? Colors.blue : Colors.green,
                  borderRadius: BorderRadius.circular(isExpanded ? 10 : 30),
                ),
                duration: Duration(milliseconds: 500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      isExpanded ? Icons.shopping_cart : Icons.check,
                      color: Colors.white,
                    ),
                    if (!isExpanded) ...[
                      SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          'Added to cart',
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
