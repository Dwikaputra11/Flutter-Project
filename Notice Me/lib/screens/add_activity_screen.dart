import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_akhir/configs/detect_system.dart';
import 'package:project_akhir/models/activity.dart';
import 'package:project_akhir/providers/activity_provider.dart';
import 'package:project_akhir/providers/category_provider.dart';
import 'package:project_akhir/widgets/drawer.dart';
import 'package:provider/provider.dart';

class AddActivityScreen extends StatefulWidget {
  const AddActivityScreen({Key? key}) : super(key: key);

  @override
  State<AddActivityScreen> createState() => _AddActivityScreenState();
}

class _AddActivityScreenState extends State<AddActivityScreen> {
  DateTime? _selecetedDate;
  final _form = GlobalKey<FormState>();
  Activity _activity = Activity(
    name: '',
    time: '',
    reminder: '',
    note: '',
    category: '',
    textColor: const Color(0xFFFFFFFF),
  );

  void _selectDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
    ).then((date) {
      if (date == null) {
        return;
      } else {
        setState(() {
          _selecetedDate = date;
          _activity = Activity(
            name: _activity.name,
            time: date.toIso8601String(),
            reminder: _activity.reminder,
            note: _activity.note,
            category: _activity.category,
            textColor: _activity.textColor,
          );
        });
      }
    });
  }

  void _saveForm() {
    final _isValid = _form.currentState?.validate();
    if (!_isValid!) {
      return;
    }
    _form.currentState?.save();
    Provider.of<ActivityProvider>(context, listen: false)
        .addActivity(_activity, context);
    System.detectSystem(context);
  }

  @override
  Widget build(BuildContext context) {
    var categories = Provider.of<CategoryProvider>(context, listen: false).getCategories;
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Add Activity'),
        actions: [
          IconButton(
            onPressed: _saveForm,
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
                onSaved: (value) {
                  _activity = Activity(
                    name: value!,
                    time: _activity.time,
                    reminder: _activity.reminder,
                    note: _activity.note,
                    category: _activity.category,
                    textColor: _activity.textColor,
                  );
                },
                validator: (val){
                  if(val!.isEmpty){
                    return 'Please fill this field';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Note'),
                ),
                onSaved: (value) {
                  _activity = Activity(
                    name: _activity.name,
                    time: _activity.time,
                    reminder: _activity.reminder,
                    note: value!,
                    category: _activity.category,
                    textColor: _activity.textColor,
                  );
                },
                validator: (val){
                  if(val!.isEmpty){
                    return 'Please fill this field';
                  }
                  return null;
                }
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(_selecetedDate == null
                        ? 'No Date Choosen'
                        : DateFormat('EEE, dd/MM/yyyy')
                            .format(_selecetedDate!)
                            .toString()),
                  ),
                  IconButton(
                    onPressed: _selectDate,
                    icon: const Icon(Icons.date_range_rounded),
                  ),
                ],
              ),
              DropdownButtonFormField<String>(
                hint: const Text('Reminder'),
                items: <String>[
                  '30 mins before',
                  '15 mins before',
                  '2 hours before',
                  '1 day before',
                  '2 day before'
                ].map<DropdownMenuItem<String>>((val) {
                  return DropdownMenuItem(
                    child: Text(val),
                    value: val,
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    _activity = Activity(
                      name: _activity.name,
                      time: _activity.time,
                      reminder: val!,
                      note: _activity.note,
                      category: _activity.category,
                      textColor: _activity.textColor,
                    );
                  });
                },
                validator: (val){
                  if(val== null){
                    return 'Please fill this field';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                hint: const Text('Category'),
                items: <String>['Sport', 'Health Care', 'Shopping', 'For Fun']
                    .map<DropdownMenuItem<String>>((cat) {
                  return DropdownMenuItem(
                    child: Text(cat),
                    value: cat,
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    val = val!.toLowerCase();
                    if (val == 'for fun') {
                      val = 'for_fun';
                    } else if (val == 'health care') {
                      val = 'health_care';
                    }
                    _activity = Activity(
                      name: _activity.name,
                      time: _activity.time,
                      reminder: _activity.reminder,
                      note: _activity.note,
                      category: val!,
                      textColor: categories.firstWhere((category) => category.id == val).textColor,
                    );
                  });
                },
                validator: (val){
                  if(val== null){
                    return 'Please fill this field';
                  }
                  return null;
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
