import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Saiyan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text(MyApp._title),
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
              //backgroundColor: Colors.orange,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                )),
              ),
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.yellow.shade900,
                indicatorWeight: 5,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: 'Home'),
                  Tab(icon: Icon(Icons.bolt_outlined), text: 'Saiyan'),
                  Tab(icon: Icon(Icons.blur_on), text: 'Power'),
                  Tab(icon: Icon(Icons.settings), text: 'Setting'),
                ],
              ),
              elevation: 20,
              titleSpacing: 5,
            ),
            body: 
            
            TabBarView(
              children: [
                buildPage('Home Page'),
                buildPage('Saiyan Page'),
                buildPage('Power Page'),
                buildPage('Setting Page'),
                
              ],
            ),
            
            ),
      ),
    );
  }

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}

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


// dropdown
class MainPage extends StatefulWidget {
  @override
_MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final items = ['Item 1','Item 2','Item 3','Item 4','Item 5','Item 6','Item 7',];
String? value;
@override 
Widget build(BuildContext context) => Scaffold(
  appBar: AppBar(title: Text('Dropedown Menu'), centerTitle: true),
  body: Center(
    child: DropdownButton<String>(
      value: value,
      isExpanded: true,
      items: items.map(buildMenuItem).toList(),
    onChanged: (value) => setState(() => this.value =value),
    ),
  ),
  );
 DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(value: item,
 child: Text(
   item,
   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
 ),
 );
}