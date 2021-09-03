
import 'package:flutter/material.dart';


/// This is the main application widget.
class SearchAppBar extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) => Scaffold(
            appBar: AppBar(
              title: Text('title'),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.notifications_none)),
                IconButton( icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: SaiyanSearch());
                },),
              ],
              backgroundColor: Colors.orange,
             
            ),
            
            );
      
  }


//Search bar
class SaiyanSearch extends SearchDelegate<String> {
  // ignore: non_constant_identifier_names
  final Saiyan = [
    'Goku',
    'Vegita',
    'Bardok',
    'Trunks',
    'Broly',
    'Gohan',
    'Raditz',
    'Nappa',
  ];

  final recentSaiyan = [
    'Goku',
    'Vegita',
    'Bardok',
  ];

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {},
        )
      ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      );

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Image\4.jpg'),
            const SizedBox(height:50),
            Text(
              query,
              style: TextStyle(
                color: Colors.black,
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = recentSaiyan;

    return buildSuggestionsSuccess(suggestions);
  }

  Widget buildSuggestionsSuccess(List<String> suggestions)  => ListView.builder(
    itemCount: suggestions.length,
    itemBuilder: (context, index){
      return ListTile(

      );

    },
  );
}


