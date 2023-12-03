import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class homesc extends StatefulWidget {
  const homesc({super.key});

  @override
  State<homesc> createState() => _homescState();
}

class _homescState extends State<homesc> {
  DateRangePickerController _dateRangePickerController =
      DateRangePickerController();

//   DateRangePickerController datePickerController =....;

// // Incorrect cast, which will result in the error you mentioned
// String stringValue = datePickerController as String;

  // late DateRangePickerController _controller;
  @override

  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   //String stringValue = _controller as String;

  //   _controller = DateRangePickerController();
  // }

  //DateRangePickerController _controller;
  var selecteddays;
  var absent;
  int working_days = 26;
  void total_absent() {
    setState(() {
      absent = working_days - selecteddays;
    });
  }

  void aziz() {
    setState(() {
      if (_dateRangePickerController != 0) {
        selecteddays = _dateRangePickerController.selectedDates!.length;
      }
    });
  }

  void khizar() {
    setState(() {
      if (1 == 1) {
        selecteddays = "0";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance"),
        centerTitle: true,
        toolbarHeight: 120,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[800],
        child: Container(
          width: 200,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(
                            "assets/laptop image.jpg",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Team Aziz",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            "View Profile",
                            style: TextStyle(
                              fontSize: 10,
                              color: const Color.fromARGB(235, 255, 255, 255),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Text(
                  "Dashboard",
                  style: TextStyle(
                    color: const Color.fromARGB(244, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Text(
                  "News",
                  style: TextStyle(
                    color: const Color.fromARGB(244, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Text(
                  "Celender",
                  style: TextStyle(
                    color: const Color.fromARGB(244, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Text(
                  "Student Education Portal ",
                  style: TextStyle(
                    color: const Color.fromARGB(244, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Text(
                  "Finance",
                  style: TextStyle(
                    color: const Color.fromARGB(244, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Text(
                  "Forms",
                  style: TextStyle(
                    color: const Color.fromARGB(244, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Text(
                  "Contact",
                  style: TextStyle(
                    color: const Color.fromARGB(244, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Text(
                  "Notification",
                  style: TextStyle(
                    color: const Color.fromARGB(244, 255, 255, 255),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Text(
                  "Logout",
                  style: TextStyle(
                    color: const Color.fromARGB(244, 255, 255, 255),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 243, 236, 236),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Container(
            height: 350,
            child: Card(
              margin: EdgeInsets.all(8.0),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: SfDateRangePicker(
                selectionShape: DateRangePickerSelectionShape.rectangle,
                controller: _dateRangePickerController,
                view: DateRangePickerView.month,
                showActionButtons: true,

                selectionMode: DateRangePickerSelectionMode.multiple,

                onCancel: () {
                  _dateRangePickerController.selectedDates = null;
                  // valu = null;
                  khizar();
                  absent = 0;
                },

                onSubmit: (Object? val) {
                  //List valu = [];
                  //_dateRangePickerController.selectedRange.toString().length;
                  //valu.add(val);
                  selecteddays = (_dateRangePickerController.selectedDates
                          .toString()
                          .length /
                      25);
                  print(selecteddays);
                  aziz();
                  total_absent();
                  // selecteddays = null;
                  // print(_dateRangePickerController.selectedDates
                  //         .toString()
                  //         .length /
                  //     25);

                  // print(valu.length);
                  // List valu = [];
                  // valu.add(_dateRangePickerController);
                  // print(val);
                  // print(valu.length);

                  //   setState(() {
                  //     for (int i = 0; i <= val.toString().length;) {
                  //       valu.add(val);
                  //     }
                  //   });

                  //   print(val.toString().length);
                },
                //controller: _controller,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Total Working Days : ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 24, 119, 197),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          "$working_days",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(children: [
              Container(
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 126, 169),
                  border: Border.all(color: Colors.brown),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Total Present",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "$selecteddays",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 126, 169),
                      border: Border.all(color: Colors.brown),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Total absent",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "$absent",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
    //selecteddays = null;
  }
}
