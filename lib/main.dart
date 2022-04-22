import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // CalendarController _controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja', ''),
      ],
      locale: const Locale('ja'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _pageController = PageController(
    viewportFraction: 0.85,//0.85くらいで端っこに別のカードが見えてる感じになる
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カレンダー'),
      ),
      body: Stack(children: <Widget>[
        Center(
          child: SfCalendar(
            onTap: (CalendarTapDetails details) {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Container(
                      child: Text("${details.date}"),
                    ),
                      actions: <Widget>[
                         TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'))
                      ],
                    );


                  });
            },
            // controller: _controller,
            headerHeight: 60,
            cellBorderColor: Colors.white,
            headerStyle: const CalendarHeaderStyle(
              textStyle: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            view: CalendarView.month,
            firstDayOfWeek: 1,
            // showDatePickerButton: true,
            monthViewSettings: const MonthViewSettings(
              showAgenda: true,
              monthCellStyle: MonthCellStyle(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 35),
          child: OutlinedButton(
            onPressed: () {
              print(DateTime.now());
            },
            style: OutlinedButton.styleFrom(primary: Colors.black),
            child: const Text('今日'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7.0, left: 225),
          child: IconButton(
              icon: const Icon(Icons.arrow_drop_down),
              tooltip: 'Increase volume by 10',
              onPressed: () {
                print(DateTime.now());
              }),
        ),
      ]),
    );
  }
}

//
// class EventDataSource extends CalendarDataSource {
//   EventDataSource(List<Event> appointments) {
//     this.appointments = appointments;
//   }
//
//   Event getEvent(int index) => appointments![index] as Event;
//
//   @override
//   DateTime GetStartTime(int index) => getEvent(index).from;
//
//   @override
//   DateTime GetEndTime(int index) => getEvent(index).to;
//
//   @override
//   String GetSubject(int index) => getEvent(index).title;
//
//   @override
//   bool isAllDay(int index) => getEvent(index).isAllDay;
// }
//
// SizedBox(
// child: Container(
// color: Colors.blue,
// height: 1,
// padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
// child: PageView(
// controller: _pageController,
// children: const [
// TextButton(
// onPressed:null,
// child: Text('Close')
// ),
// // Padding(
// //   padding: EdgeInsets.all(8.0),
// //   // child: Text("${details.date}"),
// // ),
// ],
// //   child: Text("${details.date}"),
// // ),
// // actions: <Widget>[
// //   TextButton(
// //       onPressed: () {
// //         Navigator.of(context).pop();
// //       },
// //       child: Text('Close'))
// // ],
// ),
// ),
// );