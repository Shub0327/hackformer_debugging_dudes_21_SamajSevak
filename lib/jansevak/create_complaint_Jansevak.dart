import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:login/components/button.dart';
import 'package:login/constants.dart';
import 'package:login/nagrik/view_complaint.dart';

class CreateComplaintJ extends StatefulWidget {
  const CreateComplaintJ({super.key});

  @override
  State<CreateComplaintJ> createState() => _CreateComplaintJState();
}

class _CreateComplaintJState extends State<CreateComplaintJ> {
  int radioValue = -1;
  var index = 0;

  void _handleRadioValueChanged(int? value) {
    setState(() {
      radioValue = value!;
      Navigator.of(context).pop(context);
      print(radioValue);
    });
    index = radioValue;
  }

  @override
  Widget build(BuildContext context) {
    List<String> category = [
      'Select Category',
      'Environmental Concern',
      'Community Facility',
      'Public Service',
      'Civil Rights',
      'Economic Concern',
      'Government Services',
      'Transportation',
      'Education',
      'Housing'
    ];

    //CategoryListEnum? categoryListEnum;

    void showBottomSheet() => showModalBottomSheet(
        // enableDrag: false,
        // isDismissible: false,

        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        )),
        context: context,
        builder: (context) => ListView(
              children: [
                Container(
                  //height: 800,
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.fromLTRB(17, 30, 0, 17),
                        child: Row(
                          children: const [
                            Text(
                              "Select ",
                              style: mainTextStyle,
                            ),
                            Text(
                              "Complaint Category",
                              style: yellowText,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            for (var i = 1; i < category.length; i++)
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(17, 0, 17, 10),
                                width: double.infinity,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color.fromARGB(255, 182, 234, 218)),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 10, 0)),
                                    Text(
                                      category[i],
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 102, 102, 102),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 20, 0),
                                      child: Radio<int>(
                                          activeColor: Color.fromARGB(255, 91, 143, 185),
                                          value: i,
                                          groupValue: radioValue,
                                          onChanged: _handleRadioValueChanged),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ));

    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
              child: Row(
                children: const [
                  Text(
                    "Add ",
                    style: mainTextStyle,
                  ),
                  Text(
                    "your complaint",
                    style: yellowText,
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: const Text("Enter details of your complaint",
                  style: TextStyle(
                    color: Color(0xFF1B1D22),
                  )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 0, 0),
              child: const Text("Select Complaint Category",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1B1D22),
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(28, 7, 28, 0),
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                  Text(
                    category[index],
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 6, 5, 6),
                    child: TextButton(
                      onPressed: showBottomSheet,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: const StadiumBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 182, 234, 218)),
                          )),
                      child: const Text(
                        'Select',
                        style: TextStyle(
                            color: Color.fromARGB(255, 182, 234, 218),
                            fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 0, 0),
              child: const Text("Nagrik ID",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1B1D22),
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(28, 7, 28, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Expanded(
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Nagrik ID',
                          hintStyle: hStyle,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 0, 0),
              child: const Text("Subject",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1B1D22),
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(28, 7, 28, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
              width: double.infinity,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Expanded(
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Subject',
                          hintStyle: hStyle,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 0, 0),
              child: const Text("Description",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1B1D22),
                  )),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(28, 7, 28, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 1),
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Expanded(
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Description',
                          hintStyle: hStyle,
                          border: InputBorder.none,
                        ),
                        maxLines: 10,
                        minLines: 10,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              margin: const EdgeInsets.fromLTRB(30, 25, 0, 0),
              child: const Text("Choose File",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1B1D22),
                  )),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                  height: 42,
                  width: 125,
                  child: ElevatedButton(
                    onPressed: () {
                      uploadPdf();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color.fromARGB(255, 182, 234, 218)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: const Text(
                      'Choose File',
                      style: TextStyle(
                          color: Color.fromARGB(255, 182, 234, 218),
                          fontSize: 15),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 10, 35, 0),
                  child: const Text("No File chosen",
                      style: TextStyle(
                        color: Color(0xFF1B1D22),
                      )),
                ),
              ],
            ),
            Container(
              height: 42,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
              width: double.infinity,
              child: Button(
                color: kButtonColor,
                textdata: Text(
                  'Submit',
                  style: btnStyle,
                ),
                onpressed: () {
                  setState(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ViewComplaint(),
                      ),
                    );
                  });
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}

Future uploadPdf() async {
  var dio = Dio();

  FilePickerResult? result = await FilePicker.platform
      .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);

  if (result != null) {
    File file = File(result.files.single.path ?? " ");

    String fileName = file.path.split('/').last;
    String filePath = file.path;

    FormData data = FormData.fromMap({
      'x-api-key': 'API_KEY',
      'file': await MultipartFile.fromFile(filePath, filename: fileName)
    });

    var response =
        dio.post("URL", data: data, onSendProgress: (int sent, int total) {
      print('$sent $total');
    });
    print(response.toString());
  } else {
    print('Result is null');
  }
}
