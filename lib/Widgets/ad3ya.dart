import 'package:flutter/material.dart';

class ad3ya extends StatelessWidget {

  List<String> ad3yas=["sdfsdf","sdfsdfsdf","sdfsdfsdfsdf"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: (this.ad3yas.isEmpty ) ? 0 : this.ad3yas.length,
          itemBuilder: (context, position) {

              return Card(
                color: Colors.white,
                elevation: 2.0,
                child: ListTile(
                    title: Text("hgihg"),

                ),
              );
            }

            ),
    );
  }
}
