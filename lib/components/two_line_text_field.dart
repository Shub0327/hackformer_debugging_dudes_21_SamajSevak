import 'package:flutter/material.dart';
class twolinefield extends StatelessWidget {
  final String name;
  final String content;


 twolinefield( this.name, this.content, {super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.fromLTRB(30, 20, 28, 0),
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      width: double.infinity,
      height: 55,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),

      child:
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name  ,style: TextStyle(
              color: Colors.grey[600],
              fontFamily: 'Inter-semi_bold',
              fontSize: 14.0,
            ),
            ),
            SizedBox(height: 4,),
            Text(content,style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Inter-semi_bold',
              fontSize: 13.0,
            ),
            ),
          ],
        ),
      ),


    );
  }
}
