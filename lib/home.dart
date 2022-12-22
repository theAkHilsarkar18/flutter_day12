import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtDate = TextEditingController(
      text:
          "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}");

  TextEditingController cuDate =
      TextEditingController(text: "${DateTime.now().day}");
  TextEditingController cuMonth =
      TextEditingController(text: "${DateTime.now().month}");
  TextEditingController cuYear =
      TextEditingController(text: "${DateTime.now().year}");

  // to find age
  TextEditingController bDate = TextEditingController();
  TextEditingController bMonth = TextEditingController();
  TextEditingController bYear = TextEditingController();

  String cDate = "0";
  String cMonth = "0";
  String cYear = "0";

  String bDate2 = "0";
  String bMonth2 = "0";
  String bYear2 = "0";

  int d = 0;
  int m = 0;
  int y = 0;

  int date = 0;
  int month = 0;
  int year = 0;

  int resultDate = 0;
  int resultMonth = 0;
  int resultYear = 0;

  // to find next birthday

  int nextDate = 0;
  int nextMonth = 0;
  int nextYear = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.all_inclusive),
          backgroundColor: Color(0xFF203A43),
          centerTitle: true,
          title: Text("Age Calculator",
              style: TextStyle(color: Colors.white, letterSpacing: 2)),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's Date",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 15,
                    color: Color(0xFF203A43),
                  ),
                ),
                SizedBox(height: 5),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: cuDate,
                          decoration: InputDecoration(
                            hintText: "DD",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: cuMonth,
                          decoration: InputDecoration(
                            hintText: "MM",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: cuYear,
                          decoration: InputDecoration(
                            hintText: "YYYY",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),

                // TextField(
                //   controller: txtDate,
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(15),
                //       borderSide: BorderSide(
                //           color: Color(0xFF203A43),
                //           style: BorderStyle.solid,
                //           width: 2),
                //     ),
                //   ),
                // ),
                SizedBox(height: 10),
                Text(
                  "Date of Birth",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Color(0xFF203A43),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: bDate,
                          decoration: InputDecoration(
                            hintText: "DD",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: bMonth,
                          decoration: InputDecoration(
                            hintText: "MM",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: TextField(
                          controller: bYear,
                          decoration: InputDecoration(
                            hintText: "YYYY",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                  color: Color(0xFF203A43),
                                  style: BorderStyle.solid,
                                  width: 2),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Clear",
                          style: TextStyle(
                              color: Color(0xFF203A43),
                              fontSize: 20,
                              letterSpacing: 2),
                        ),
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFF203A43),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    // calculate button

                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(
                            () {
                              cDate = cuDate.text;
                              cMonth = cuMonth.text;
                              cYear = cuYear.text;

                              d = int.parse(cDate);
                              m = int.parse(cMonth);
                              y = int.parse(cYear);

                              // birthday date , month , year
                              bDate2 = bDate.text;
                              bMonth2 = bMonth.text;
                              bYear2 = bYear.text;

                              date = int.parse(bDate2);
                              month = int.parse(bMonth2);
                              year = int.parse(bYear2);

                              // for present age

                              if (d >= date) {
                                resultDate = d - date;
                              } else {
                                resultDate = date - d;
                              }

                              if (m >= month) {
                                int x = m - month;
                                resultMonth = 12 - x;
                              } else {
                                resultMonth = month - m;
                              }

                              if (y >= year) {
                                resultYear = y - year;
                              } else {
                                resultYear = year - y;
                              }

                              // for next birthday

                              if (d >= date) {
                                nextDate = d - date;
                              } else {
                                nextDate = date - d;
                              }

                              if (m >= month) {
                                m = 12 - m;
                                nextMonth = m + month;
                              } else {
                                nextMonth = month - m;
                              }

                              if (y >= year) {
                                nextYear = y - year;
                              } else {
                                nextYear = year - y;
                              }




                            },
                          );
                        },
                        child: Container(
                          child: Text("Calculate",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  letterSpacing: 2)),
                          alignment: Alignment.center,
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Color(0xFF203A43),
                              Colors.teal.shade700,
                              //Color(0xFF203A43),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Present Age",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Color(0xFF203A43),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // present age container
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF13547A),
                        Color(0xFF203A43),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //container 1
                      Container(
                        padding: EdgeInsets.all(13),
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.white),
                            ),
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "$resultYear",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "YYYY",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //container 2
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(13),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            //border: Border.all(color: Colors.white),
                            ),
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "$resultMonth",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "MM",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //container 3
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(13),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            //border: Border.all(color: Colors.white),
                            ),
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "$resultDate",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "DD",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Text(
                  "Next Birthday",
                  style: TextStyle(
                    letterSpacing: 2,
                    color: Color(0xFF203A43),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // next birthday ui
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF6BBED9),
                        Color(0xFF006ABC),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.white),
                            ),
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "$nextMonth",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "MM",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(13),
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            // border: Border.all(color: Colors.white),
                            ),
                        child: Column(
                          children: [
                            Container(
                              height: 35,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "$nextDate",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  // color: Colors.black12
                                  ),
                              child: Text(
                                "DD",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
