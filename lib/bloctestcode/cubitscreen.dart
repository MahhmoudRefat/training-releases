import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_releases_one/bloctestcode/cubitcode/cubit.dart';
import 'package:training_releases_one/bloctestcode/cubitcode/states.dart';

class HiName extends StatelessWidget {
  String nname = " ";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => namecubit(),
      child: BlocConsumer<namecubit, NameStates>(
        listener: (context, state) {},
        builder: (context, state) {
          namecubit cubit = namecubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text("bloc test"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: cubit.namecontroller,
                    decoration: InputDecoration(
                      labelText: "enter your name ",
                      hintText: "Mahmoud refaat",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      nname = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    height: 50,
                    color: Colors.blue,
                    onPressed: () {
                      cubit.ChangedName();
                    },
                    child: Text(
                      'Enter',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    shape: OutlineInputBorder(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Welcome \n MR  ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "$nname",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.blue,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
