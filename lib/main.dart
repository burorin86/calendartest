import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dateinsert.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // CalendarController _controller;
  @override
  Widget build(BuildContext context) {

    // initializeDateFormatting('ja','');
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
    viewportFraction: 0.85,
  );
  CalendarController _calendarController = CalendarController();
  // late final String sentDateJst;

  // get sentDateFormatted  {
  //   initializeDateFormatting("ja_JP");
  //
  //   DateTime datetime = DateTime.parse(sentDateJst); // StringからDate
  //
  //   var formatter = new DateFormat('yyyy/MM/dd(E) HH:mm', "ja_JP");
  //   var formatted = formatter.format(datetime); // DateからString
  //   return formatted;
  // }
  // var utc = DateTime.utc(year, month, day);
  // var local = utc.toLocal();

  @override
  Widget build(BuildContext context) {
    // initializeDateFormatting('ja','');
    return Scaffold(
      appBar: AppBar(
        title: const Text('カレンダー'),
      ),
      body: Stack(children: <Widget>[
        Center(
          child: _Calendarsection()
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 10.0, left: 35),
        //   child: OutlinedButton(
        //     onPressed: () {
        //       _Calendarsection();
        //       // final today_Month = DateTime.now().month;
        //       // final today_Day = DateTime.now().day;
        //       // final today_week = DateTime.now().weekday;
        //       //
        //       // return print(DateTime(today_Month,today_Day,today_week));
        //       print(DateTime.now().weekday);
        //     },
        //     style: OutlinedButton.styleFrom(primary: Colors.black),
        //     child: const Text('今日'),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 7.0, left: 225),
        //   child: IconButton(
        //       icon: const Icon(Icons.arrow_drop_down),
        //       // tooltip: 'Increase volume by 10',
        //       onPressed: () {
        //         print(DateTime.now());
        //       }),
        // ),
      ]),
    );
  }
  @override
  initState() {
    _calendarController.displayDate = DateTime.now();
    super.initState();
  }


  Widget _Calendarsection() {

    return SfCalendar(
      controller: _calendarController,
      onTap: (CalendarTapDetails details) {
        // DateFormat.EEEE('ja');
        showDialog(
            context: context,
            builder: (BuildContext context) {
              // Intl.defaultLocale = 'ja_JP';
              // DateUtils.dateOnly(date);
              // var formate2 = "${details.date.year}-${dateTime.month}-${dateTime.day}";
              // final DateFormat formatter = DateFormat('yyyy年MM月dd日');
              // final String formatted = formatter.details.date;
              // String? convertiEnDateEtHeure(n) {
              //   String date = DateFormat.yMMMd().add_Hm().format(n);
              //
              //   return date;
              // }
              return AlertDialog(
                title: Container(
                  height: 300,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${details.date}",
                            style: const TextStyle(fontSize: 15),
                          ),
                          IconButton(
                              icon: const Icon(Icons.add),
                              // tooltip: 'Increase volume by 10',
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  // （2） 実際に表示するページ(ウィジェット)を指定する
                                    builder: (context) => dateinsert()
                                ));
                                print(DateTime.now());
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      print(Intl.defaultLocale);
                    },
                    child: Text('Close'),
                  ),
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
      showDatePickerButton: true,
      monthViewSettings: const MonthViewSettings(
        showAgenda: true,
        monthCellStyle: MonthCellStyle(),
      ),
    );
    }
}

// class todayDate {
//   final _todayDate = DateTime.now;
//   return _todayDate;
// }

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