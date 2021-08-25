import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataSearch extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: (){
            query = "";
          })
    ];
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, null);
      },
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
    throw UnimplementedError();
  }

  suggestions(String search) async{

    http.Response responde = await http.get(
        "http://suggestqueries.google.com/complete/search?hl=en&ds=yt&client=youtube&hjson=t&cp=1&q=$search&format=5&alt=json"
    );
  }
}