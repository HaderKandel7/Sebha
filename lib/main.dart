import 'package:flutter/material.dart';


void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

enum ValuesRadio { sobhan, Elhamd, Akbar, Astaghfar }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String value;
  ValuesRadio _character = ValuesRadio.sobhan;
 // int counter=0;
  List<int> l_Counter=[0,0,0,0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elsebha'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('السبحة '),
            Stack(
              alignment: Alignment.center,
              children: [

                Container(
                    height: 100,
                    width: 100,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepOrangeAccent,
                      ),
                    )),
                Text('${l_Counter[_character.index]}',style: TextStyle(fontSize: 30, color: Colors.white),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: MaterialButton(
                          child: Text(
                            'تسبيح ',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            setState(() {
                              l_Counter[_character.index]++;
                            });
                          })),
                  SizedBox(width: 20,),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: MaterialButton(
                          child: Text(
                            'اعادة ',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            setState(() {
                              l_Counter[_character.index]=0;
                            });
                          })),
                ],
              ),
            ),
            ListTile(
              title: const Text('سيحان الله '),
              leading: Radio<ValuesRadio>(
                value: ValuesRadio.sobhan,
                groupValue: _character,
                onChanged: (ValuesRadio value) {
                  setState(() {
                    _character = value;
                    print(_character.index);
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('الحمدلله '),
              leading: Radio<ValuesRadio>(
                value: ValuesRadio.Elhamd,
                groupValue: _character,
                onChanged: (ValuesRadio value) {
                  setState(() {
                    _character = value;
                    print(_character.index);
                  });
                },
              ),
            ),
            ListTile(
              title: const Text(' الله اكبر '),
              leading: Radio<ValuesRadio>(
                value: ValuesRadio.Akbar,
                groupValue: _character,
                onChanged: (ValuesRadio value) {
                  setState(() {
                    _character = value;
                    print(_character.index);
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('استغفر الله '),
              leading: Radio<ValuesRadio>(
                value: ValuesRadio.Astaghfar,
                groupValue: _character,
                onChanged: (ValuesRadio value) {
                  setState(() {
                    _character = value;
                    print(_character.index);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
