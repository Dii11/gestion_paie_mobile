import 'package:flutter/material.dart';

class ListeEmploye extends StatelessWidget {
  const ListeEmploye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  collapseMode: CollapseMode.parallax,
                  //color: Color.fromRGBO(10, 3, 83, 0.9791666865348816),

                  title: const Text("Collapsing Appbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background:Image.asset('assets/images/fond.png')),
            ),
          ];
        },

        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Text("Item $index", textAlign: TextAlign.center));

          },
        ),
      ),
    );
  }
}

