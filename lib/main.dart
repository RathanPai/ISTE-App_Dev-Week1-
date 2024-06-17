import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[900],
          appBar: AppBar(
            title: const Text("Profile",
                style:TextStyle(
                    color:Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                )
            ),
            centerTitle: true,
            backgroundColor: Colors.grey[850],
          ),
          body : const Padding(
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
              child : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://w0.peakpx.com/wallpaper/979/89/HD-wallpaper-purple-smile-design-eye-smily-profile-pic-face.jpg'),
                      radius: 70.0,
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Text('NAME : ',
                      style : TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                        fontSize: 18.0,
                      )
                  ),
                  SizedBox(height: 10.0),
                  Text('Rathan',
                      style : TextStyle(
                          color: Colors.amber,
                          fontSize: 32.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold
                      )
                  ),
                  SizedBox(height: 30.0),
                  Text('AGE :',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        letterSpacing: 2.0
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text('18',
                      style : TextStyle(
                        color: Colors.amber,
                        fontSize: 32.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  SizedBox(height: 30.0),
                  Text('BIO : ',
                      style : TextStyle(
                          color: Colors.grey,
                          letterSpacing: 2.0,
                          fontSize: 18.0
                      )
                  ),
                  SizedBox(height : 10.0),
                  Text('A happy go lucky boy',
                      style : TextStyle(
                          color: Colors.amber,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0
                      )
                  ),
                  Divider(
                    height: 90.0,
                    color: Colors.grey,
                  ),
                  Text('Welcome User : ',
                      style : TextStyle(
                          fontSize: 24.0,
                          color: Colors.green
                      )
                  ),
                  Quotes(),
                ],
              )
          )
      ),
    );
  }
}

class Quotes extends StatefulWidget {
  const Quotes({super.key});
  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<String> quotes = [
    'The best way to get started is to quit talking and begin doing.',
    'The pessimist sees difficulty in every opportunity. The optimist sees opportunity in every difficulty.',
    'Don’t let yesterday take up too much of today.',
    'You learn more from failure than from success. Don’t let it stop you. Failure builds character.',
    'It’s not whether you get knocked down, it’s whether you get up.',
    'If you are working on something that you really care about, you don’t have to be pushed. The vision pulls you.',
    'People who are crazy enough to think they can change the world, are the ones who do.',
    'Failure will never overtake me if my determination to succeed is strong enough.',
    'Entrepreneurs are great at dealing with uncertainty and also very good at minimizing risk. That’s the classic entrepreneur.',
    'We may encounter many defeats but we must not be defeated.',
  ];

  String currentQuote = 'Click the  button to generate a quote!';

  void generateQuote (){
    var random = Random();
    setState(() {
      currentQuote = quotes[random.nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500.0,
          child: Text(currentQuote,
            style: const TextStyle(
                fontSize: 24.0,
                fontStyle: FontStyle.italic,
                color: Colors.white
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(onPressed: generateQuote,
            child: const Text('Generate quote')
        )
      ],
    );
  }
}