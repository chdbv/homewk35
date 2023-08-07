import 'package:flutter/material.dart';
import 'package:homework35/phone_number.dart';
import 'package:homework35/style/text_style.dart';

import 'model/employe_model.dart';

class EmployeeInfo extends StatelessWidget {
  const EmployeeInfo({super.key, required EmployeeModel employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 380,
                  top: 45,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Image.asset(
                employeesList[0].imageUrl,
                width: 140,
              ),
              const SizedBox(height: 20),
              Text(
                "${employeesList[0].surname} ${employeesList[0].name}\n        ${employeesList[0].patronymic}",
                style: EmployeInfoTextStyle.style1,
              ),
              const SizedBox(height: 20),
              Text(
                employeesList[0].position,
                style: EmployeInfoTextStyle.style2,
              ),
              const SizedBox(height: 50),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 23),
                margin: const EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Направление',
                      style: EmployeInfoTextStyle.style3,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      employeesList[0].department,
                      style: EmployeInfoTextStyle.style4,
                    ),
                    const Divider(
                      color: Color(0xffDEE1E5),
                      thickness: 1,
                      height: 33,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Отдел',
                      style: EmployeInfoTextStyle.style3,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      employeesList[0].direction,
                      style: EmployeInfoTextStyle.style4,
                    ),
                    const Divider(
                      color: Color(0xffDEE1E5),
                      thickness: 1,
                      height: 33,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style: EmployeInfoTextStyle.style3,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      employeesList[0].email,
                      style: EmployeInfoTextStyle.style4,
                    ),
                    const Divider(
                      color: Color(0xffDEE1E5),
                      thickness: 1,
                      height: 33,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Дата рождения',
                      style: EmployeInfoTextStyle.style3,
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      employeesList[0].dateofbirth,
                      style: EmployeInfoTextStyle.style4,
                    ),
                    const Divider(
                      color: Color(0xffDEE1E5),
                      thickness: 1,
                      height: 33,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Телефон основной',
                      style: EmployeInfoTextStyle.style3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          employeesList[0].phoneNumberFirst,
                          style: EmployeInfoTextStyle.style4,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.green,
                            size: 30,
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return EmployeeBottomSheet(
                                    employee: employeesList[0]);
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color(0xffDEE1E5),
                      thickness: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
