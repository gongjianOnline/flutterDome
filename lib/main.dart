import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main(){
  runApp(const MaterialApp(
    home:MyApp(),
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales:[
      //此处
      Locale('zh', 'CH'),
      Locale('en', 'US'),
    ],

  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TimeOfDay time = TimeOfDay.now();
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    print(dateTime);
    return Scaffold(
      appBar: AppBar(
        title:const Text("时间格式")
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Text("${time.hour}:${time.minute}"),
              onTap: ()async{
                TimeOfDay? newTime = await showTimePicker(
                  context: context, 
                  initialTime: time
                );
                setState(() {
                  time = newTime!;
                });
              },
            ),
            SizedBox(height: 30),
            InkWell(
              child: Text("${dateTime.year}-${dateTime.month}-${dateTime.day}"),
              onTap: ()async{
                DateTime? newDateTime = await showDatePicker(
                  context: context, 
                  initialDate: dateTime, 
                  firstDate: DateTime(1990,1,1), 
                  lastDate: DateTime(2050,1,1)
                );
                setState(() {
                  dateTime = newDateTime!;
                });
              },
            )
          ],
        ),
      )
    );
  }
}



