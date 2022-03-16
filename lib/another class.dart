/*
void main() {
  runApp(MaterialApp(
      home: new MyApp(),
      routes: <String, WidgetBuilder>{
        "/monthlyOverview" : (BuildContext context)=> new MonthlyOverview(),
        //add more routes here
      }
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
              child: FlatButton(
                child: Text('Next', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                onPressed: () async {
                  List<String> categoryList = ['Item 1', 'Item 2', 'Item 3'];
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.setStringList('Categories', categoryList);
                  Navigator.of(context).pushNamed("/monthlyOverview");
                },
              )
          )
      ),
    );
  }

}

class MonthlyOverview extends StatefulWidget {
  @override
  _MonthlyOverviewState createState() => _MonthlyOverviewState();
}

class _MonthlyOverviewState extends State<MonthlyOverview> {
  List<String> _categories = new List<String>();

  @override
  void initState() {
    super.initState();

    _getCategory().then((value) {
      _categories = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
            color: Colors.white,
            child: _categories.length > 0 ? Text(_categories[0] + '\n' + _categories[1] + '\n' + _categories[2], style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),) : Text(''),
          )
      ),
    );
  }

  _getCategory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> categoryList = prefs.getStringList('Categories');
    return categoryList;
  }
}*/
