import 'package:flutter/material.dart';

class ad3ya extends StatelessWidget {

  List<String> ad3yas=["sdfsdf","sdfsdfsdf","sdfsdfsdfsdf"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  ListView.builder(
          itemCount: (this.ad3yas.isEmpty ) ? 0 : this.ad3yas.length,
          itemBuilder: (context, position) {

              return Card(
                color: Colors.white,
                elevation: 7,
               shape:  RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15)
               ),
                margin: EdgeInsets.all(10),
                child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child:
                    Text(
                      ad3yas[position],style:TextStyle(color:Colors.black),
                    )
                    ,
                  )

              );
            }

            ),
    );
  }
}
