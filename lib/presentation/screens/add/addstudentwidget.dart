import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:studentapp/domain/constants/constants.dart';
import 'package:studentapp/presentation/widgets/headtitlewidget.dart';

import '../../../application/bloc/home_bloc.dart';
import '../../../domain/models/studentmodel.dart';
import '../../widgets/textfieldwidget.dart';

class AddStudentWidget extends StatelessWidget {
  AddStudentWidget({Key? key}) : super(key: key);
  final TextEditingController _agecontroller = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _standardcontroller = TextEditingController();
  ImagePicker imagePicker = ImagePicker();

  var pathimage;
  String? gender;
  String? _dropDownValue;
  List<String> dropdownlist = [
    'PRE-KG',
    'LKG',
    'UKG',
    'I',
    'II',
    'III',
    'IV',
    'V',
    'VI',
    'VII',
    'VIII',
    'IX',
    'X',
    'XI',
    'XII'
  ];

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context)
        .add(const HomeEvent.getimage(image: null));
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Students'),
        actions: [
          ElevatedButton.icon(
            onPressed: () {
              onsavebuttonclicked(context);
            },
            icon: const Icon(Icons.save),
            label: const Text('Save'),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 197, 250, 225),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const HeadTitle(
                        title: "Add Student",
                      ),
                      height20,
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 110,
                            width: 130,
                          ),
                          BlocBuilder<HomeBloc, HomeState>(
                            builder: (context, state) {
                              print(state.image);
                              return state.image == null
                                  ? Container(
                                      width: 100,
                                      height: 100,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(avatarimage),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                      ))
                                  : Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: FileImage(File(state.image)),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle,
                                      ));
                            },
                          ),
                          Positioned(
                            bottom: 4,
                            right: -7,
                            child: ElevatedButton(
                              onPressed: () async {
                                await showChoiceDialog(context);
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    const CircleBorder()),
                              ),
                              child: const Icon(Icons.photo_camera),
                            ),
                          ),
                        ],
                      ),
                      height20,
                      TextFieldWidget(
                        expr: '[a-zA-Z ]',
                        label: 'Name',
                        type: TextInputType.name,
                        getcontrol: _namecontroller,
                      ),
                      height20,
                      Row(
                        children: const [
                          Text("Gender :", style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          radiobuttonwidget("Male", context),
                          radiobuttonwidget("Female", context),
                          radiobuttonwidget("Other", context),
                        ],
                      ),
                      height20,
                      TextFieldWidget(
                        expr: '[0-9]',
                        label: 'Age',
                        type: TextInputType.number,
                        getcontrol: _agecontroller,
                        maxlength: 2,
                      ),
                      height20,
                      Row(
                        children: [
                          const Text(
                            'Class   :',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                return DropdownButton(
                                  hint: state.standard == null
                                      ? const Text('Select ')
                                      : Text(
                                          state.standard == 'LKG' ||
                                                  state.standard == 'UKG' ||
                                                  state.standard == 'PRE-KG'
                                              ? state.standard
                                              : "${state.standard} standard",
                                        ),
                                  menuMaxHeight: 200,

                                  // isExpanded: true,
                                  iconSize: 30.0,
                                  items: dropdownlist.map(
                                    (val) {
                                      return DropdownMenuItem<String>(
                                        value: val,
                                        child: Text(val),
                                      );
                                    },
                                  ).toList(),
                                  onChanged: (val) {
                                    _dropDownValue = val.toString();
                                    BlocProvider.of<HomeBloc>(context).add(
                                      Getstandard(standard: _dropDownValue),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
              // })
              ),
        ],
      ),
    );
  }

  BlocBuilder<HomeBloc, HomeState> radiobuttonwidget(
      String valuename, context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Row(children: [
          Radio(
              value: valuename,
              groupValue: state.gender,
              onChanged: (value) {
                BlocProvider.of<HomeBloc>(context).add(
                  Getgender(gender: value),
                );
                gender = valuename;
              }),
          Text(valuename),
        ]);
      },
    );
  }

  onsavebuttonclicked(
    BuildContext context,
  ) async {
    final _name = _namecontroller.text.trim();
    final _age = _agecontroller.text.trim();

    final _gender = gender;
    final _standard = _dropDownValue;

    if (_name.isEmpty || _age.isEmpty || _gender == null || _standard == null) {
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Fill up all blanks'),
        duration: Duration(milliseconds: 700),
        backgroundColor: Colors.red,
      ));
    } else if (_name.length < 4) {
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Error'),
        duration: Duration(milliseconds: 700),
        backgroundColor: Colors.red,
      ));
    }

    final _student = StudentModel(
        name: _name,
        age: _age,
        key: DateTime.now().microsecond,
        image: pathimage,
        gender: _gender,
        standard: _standard);

    BlocProvider.of<HomeBloc>(context).add(
      AddStudent(model: _student),
    );
    Navigator.of(context).pop();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Student Added'),
    ));
  }

  Future<void> showChoiceDialog(BuildContext context) {
    var _image;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Choose option",
              style: TextStyle(color: Colors.teal),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  const Divider(
                    height: 1,
                    color: Colors.teal,
                  ),
                  ListTile(
                    onTap: () async {
                      XFile? image = await imagePicker.pickImage(
                          source: ImageSource.gallery);
                      _image = image!.path;
                      pathimage = _image;

                      BlocProvider.of<HomeBloc>(context)
                          .add(HomeEvent.getimage(image: pathimage));
                      Navigator.of(context).pop();
                    },
                    title: const Text("Gallery"),
                    leading: const Icon(Icons.photo_library_sharp,
                        color: Colors.teal),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.teal,
                  ),
                  ListTile(
                    onTap: () async {
                      XFile? image = await imagePicker.pickImage(
                          source: ImageSource.camera);
                      _image = image!.path;
                      pathimage = _image;
                      BlocProvider.of<HomeBloc>(context)
                          .add(HomeEvent.getimage(image: pathimage));

                      Navigator.of(context).pop();
                    },
                    title: const Text("Camera"),
                    leading: const Icon(
                      Icons.camera,
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
