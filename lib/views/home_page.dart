import 'package:fluttertestapp/ui.dart';
import 'package:fluttertestapp/views/widgets/elevated_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppProviderMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home Page')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(
              name: 'Use Case 1',
              n: 1,
            ),
            Button(name: 'Use Case 2', n: 2),
            Button(name: 'Use Case 3', n: 3),
            Button(name: 'Use Case 4', n: 4),
            Button(name: 'Use Case 5', n: 5),
            Button(name: 'Use Case 6', n: 6),
          ],
        ),
      ),
    );
  }
}
