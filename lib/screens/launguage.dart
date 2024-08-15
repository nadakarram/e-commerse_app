import 'package:flutter/material.dart';

class Launguage extends StatefulWidget {
  const Launguage({super.key});

  @override
  State<Launguage> createState() => _LaunguageState();
}

class _LaunguageState extends State<Launguage> {
    String selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {'name': 'English', 'flag': '🇺🇸'},
    {'name': 'French', 'flag': '🇫🇷'},
    {'name': 'German', 'flag': '🇩🇪'},
    {'name': 'Chinese', 'flag': '🇨🇳'},
    {'name': 'Japanese', 'flag': '🇯🇵'},
    {'name': 'Turkish', 'flag': '🇹🇷'},
  ];
  @override
  Widget build(BuildContext context) {
    return (

      Scaffold(
        appBar: AppBar(title: Text("Launguage"),centerTitle: true,),
        body: Column(
          children: [
            Text("Select a Launguage"),
            SizedBox(height: 15,),
            Expanded(child:  ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedLanguage = languages[index]['name']!;
              });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: selectedLanguage == languages[index]['name']
                      ? Colors.purple
                      : Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8.0),
                color: 
                     Colors.white,
              ),
              child: Row(
                children: [
                  Text(
                    languages[index]['flag']!,
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(width: 16),
                  Text(
                    languages[index]['name']!,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    )
            
          ],
        ),
      )
    );
  }
}

class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() => _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String selectedLanguage = 'English';

  final List<Map<String, String>> languages = [
    {'name': 'English', 'flag': '🇺🇸'},
    {'name': 'French', 'flag': '🇫🇷'},
    {'name': 'German', 'flag': '🇩🇪'},
    {'name': 'Chinese', 'flag': '🇨🇳'},
    {'name': 'Japanese', 'flag': '🇯🇵'},
    {'name': 'Turkish', 'flag': '🇹🇷'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'),
        backgroundColor: Colors.purple,
      ),
      body: 
      ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedLanguage = languages[index]['name']!;
              });
            },
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color:  Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8.0),
                color: selectedLanguage == languages[index]['name']
                    ? Colors.purple.withOpacity(0.1)
                    : Colors.white,
              ),
              child: Row(
                children: [
                  Text(
                    languages[index]['flag']!,
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(width: 16),
                  Text(
                    languages[index]['name']!,
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    
    );
  }
}