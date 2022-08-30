import 'package:flutter/material.dart';
import 'services.dart';
import 'mycart.dart';
import 'package:intl/intl.dart';

class car_service extends StatefulWidget {
  @override
  State<car_service> createState() => _car_serviceState();
}

class _car_serviceState extends State<car_service> {
  @override
  final List<String> _wash_service = [
    "Interior wash",
    "Exterior wash",
    "Interior & Exterior wash",
  ];
  final List<String> _ac_service = [
    "AC Sanitation",
    "AC cleaning ",
    "All AC Service",
  ];
  final List<String> _painting = [
    "Underchase",
    "Whole Body",
    "Doors & Bumper",
  ];
  final List<String> _other_service = [
    "Lubrication",
    "Accessories",
    "Interior & Exterior works",
  ];

  @override
  String? _selectedwash;
  String? _selectedAc;
  String? _selectedPaint;
  String? _selectedOther;
  TextEditingController? _dobController;
  DateTime? _date;

  //init
  @override
  void initState() {
    super.initState();
    _dobController = TextEditingController();
  }

  void _selectDob() async {
    final DateTime? pickedDate = await showDatePicker(
        helpText: 'Select your appointment date',
        cancelText: 'Cancel',
        confirmText: 'Done',
        context: context,
        initialDate: _date ??
            DateTime(
                DateTime.now().year, DateTime.now().month, DateTime.now().day),
        firstDate: DateTime(1900),
        lastDate: DateTime(2025));
    if (pickedDate != null && pickedDate != _date) {
      setState(() {
        _date = pickedDate;
        _dobController?.text = DateFormat('MMM d, yyyy').format(_date!);
        print("date $_date");
        // _patientAgeController.text =
        //     (DateTime.now().year - pickedDate.year).toString();
      });
    }
  }

  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Car Service',
        ),
        backgroundColor: Color(0xF80684AE),
      ),
      body: Center(
        child: Container(
          height: 700,
          width: 400,
          decoration: BoxDecoration(
            color: Color(0xF80684AE),
            boxShadow: [
              BoxShadow(),
            ],
          ),
          child: Column(children: [
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                labelText: "Car Number",
                labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            // Divider(
            //   color: Colors.black,
            //   height: 0,
            //   thickness: 0.5,
            // ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                labelText: "Car Company Name",
                labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            // Divider(
            //   color: Colors.black,
            //   height: 0,
            //   thickness: 0.5,
            // ),

            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                labelText: "Car Model Name",
                labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            InkWell(
              onTap: _selectDob,
              child: IgnorePointer(
                child: TextFormField(
                  controller: _dobController,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    labelText: 'Appointment Date',
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderSide: BorderSide(
                    //       // color: Colors.white,

                    //       ),
                    //   borderRadius: BorderRadius.circular(14),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   // borderSide: BorderSide(
                    //   //   // color: Colors.black,
                    //   //   // width: 1,
                    //   // ),
                    //   borderRadius: BorderRadius.circular(16),
                    // ),
                    // filled: true,
                    fillColor: Color(0xF80684AE),
                  ),
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
            SizedBox(
              height: 0.0,
            ),
            // Divider(
            //   color: Colors.black,
            //   height: 0,
            //   thickness: 0.5,
            // ),
            SizedBox(
              height: 0.0,
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xF80684AE),
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(0)),
                    child: DropdownButton<String>(
                      // value: null,
                      value: _selectedwash,
                      onChanged: (value) {
                        setState(() {
                          _selectedwash = value;
                        });
                      },
                      hint: const Center(
                          child: Text(
                        'Wash Service',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      // Hide the default underline
                      underline: Container(),
                      // set the color of the dropdown menu
                      dropdownColor: Colors.white,

                      isExpanded: true,

                      // The list of options
                      items: _wash_service
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    e,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              ))
                          .toList(),

                      // Customize the selected item
                      selectedItemBuilder: (BuildContext context) =>
                          _wash_service
                              .map((e) => Center(
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ))
                              .toList(),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                  thickness: 0.5,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xF80684AE),
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(0)),
                    child: DropdownButton<String>(
                      // value: null,
                      value: _selectedAc,
                      onChanged: (value) {
                        setState(() {
                          _selectedAc = value;
                        });
                      },
                      hint: const Center(
                          child: Text(
                        'AC Service',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      // Hide the default underline
                      underline: Container(),
                      // set the color of the dropdown menu
                      dropdownColor: Colors.white,

                      isExpanded: true,

                      // The list of options
                      items: _ac_service
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    e,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              ))
                          .toList(),

                      // Customize the selected item
                      selectedItemBuilder: (BuildContext context) => _ac_service
                          .map((e) => Center(
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                  thickness: 0.5,
                ),
              ],
            ),
            SizedBox(
              height: 0.0,
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xF80684AE),
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(0)),
                    child: DropdownButton<String>(
                      // value: null,
                      value: _selectedPaint,
                      onChanged: (value) {
                        setState(() {
                          _selectedPaint = value;
                        });
                      },
                      hint: const Center(
                          child: Text(
                        'Painting',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      // Hide the default underline
                      underline: Container(),
                      // set the color of the dropdown menu
                      dropdownColor: Colors.white,

                      isExpanded: true,

                      // The list of options
                      items: _painting
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    e,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              ))
                          .toList(),

                      // Customize the selected item
                      selectedItemBuilder: (BuildContext context) => _painting
                          .map((e) => Center(
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                  thickness: 0.5,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xF80684AE),
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(0)),
                    child: DropdownButton<String>(
                      // value: null,
                      value: _selectedOther,
                      onChanged: (value) {
                        setState(() {
                          _selectedOther = value;
                        });
                      },
                      hint: const Center(
                          child: Text(
                        'Other Service',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                      // Hide the default underline
                      underline: Container(),
                      // set the color of the dropdown menu
                      dropdownColor: Colors.white,

                      isExpanded: true,

                      // The list of options
                      items: _other_service
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    e,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              ))
                          .toList(),

                      // Customize the selected item
                      selectedItemBuilder: (BuildContext context) =>
                          _other_service
                              .map((e) => Center(
                                    child: Text(
                                      e,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ))
                              .toList(),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 0,
                  thickness: 0.5,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(children: [
              ButtonTheme(
                  height: 30,
                  disabledColor: Colors.black12,
                  child: RaisedButton(
                      color: Colors.black,
                      child: Text(
                        'Add Cart',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mycart(),
                          ),
                        );
                      })),
            ]),
          ]),
        ),
      ));
}
