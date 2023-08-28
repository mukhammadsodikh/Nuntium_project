import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = false;
  int fontSize = 16;
  String selectedLanguage = 'English';
  bool enableNotifications = true;
  bool enablePrivacy = true;

  void toggleDarkMode() {
    setState(() {
      darkMode = !darkMode;
    });
  }

  void increaseFontSize() {
    setState(() {
      fontSize++;
    });
  }

  void decreaseFontSize() {
    setState(() {
      if (fontSize > 1) {
        fontSize--;
      }
    });
  }

  void changeLanguage(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  void toggleNotifications(bool value) {
    setState(() {
      enableNotifications = value;
    });
  }

  void togglePrivacy(bool value) {
    setState(() {
      enablePrivacy = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
    },
        ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: darkMode,
              onChanged: (value) {
                toggleDarkMode();
              },
            ),
            ListTile(
              title: const Text('Font Size'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      decreaseFontSize();
                    },
                  ),
                  Text(fontSize.toString()),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      increaseFontSize();
                    },
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Language Settings'),
              trailing: DropdownButton<String>(
                value: selectedLanguage,
                onChanged: (value) {
                  changeLanguage(value!);
                },
                items: ['English', 'Russian', 'Uzbek']
                    .map<DropdownMenuItem<String>>((String language) {
                  return DropdownMenuItem<String>(
                    value: language,
                    child: Text(language),
                  );
                }).toList(),
              ),
            ),
            SwitchListTile(
              title: const Text('Notification Settings'),
              value: enableNotifications,
              onChanged: (value) {
                toggleNotifications(value);
              },
            ),
            SwitchListTile(
              title: const Text('Privacy Settings'),
              value: enablePrivacy,
              onChanged: (value) {
                togglePrivacy(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}

