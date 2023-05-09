import 'package:flutter/material.dart';
import 'package:google_images/model/image_model.dart';
import 'package:google_images/views/images_view.dart';

import '../services/image_service.dart';
import 'search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? word;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
            'GOOGLE IMAGES',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: SearchBar());
                },
                icon: const Icon(Icons.search))
          ]),
      body: getBody(word),
    );
  }

  Widget getBody(String? word) {
    return word != null
        ? FutureBuilder(
            future: googleImages(word),
            builder: (buildContext, AsyncSnapshot<List<Imagemodel>> snapshot) {
              if (snapshot.hasData) {
                return ListView(
                    children: getWordMeaningsWidgets(snapshot.data!));
              }

              return const Center(
                child: CircularProgressIndicator(),
              );
            })
        : const Center(
            child: Text('Enter a word and search'),
          );
  }

  List<Widget> getWordMeaningsWidgets(List<Imagemodel> imageModels) {
    var widgets = <Widget>[];

    for (var imageModel in imageModels) {
      var widget = const ImagesView();
      widgets.add(widget);
    }

    return widgets;
  }
}
