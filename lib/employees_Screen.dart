import 'package:flutter/material.dart';
import 'package:homework35/employee_info.dart';
import 'package:homework35/phone_number.dart';
import 'package:homework35/style/text_style.dart';
import 'model/employe_model.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Сотрудники",
              textAlign: TextAlign.start,
              style: EmployeScreenTextStyle.style1,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFE8E8E8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: "ПОИСК",
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('У кого сегодня день рождение',
                style: EmployeScreenTextStyle.style2),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Image.asset(
                  employeesList[0].imageUrl,
                  width: 80,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  employeesList[1].imageUrl,
                  width: 80,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  employeesList[2].imageUrl,
                  width: 80,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  employeesList[3].imageUrl,
                  width: 80,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  employeesList[4].imageUrl,
                  width: 80,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('У кого завтра день рождение',
                style: EmployeScreenTextStyle.style3),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const SizedBox(width: 10),
                Image.asset(
                  employeesList[3].imageUrl,
                  width: 80,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  employeesList[4].imageUrl,
                  width: 80,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Все сотрудники', style: EmployeScreenTextStyle.style3),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          EmployeeInfo(employee: employeesList[0])),
                );
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  width: 400,
                  height: 75,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(employeesList[0].imageUrl),
                        radius: 27,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "${employeesList[0].surname} ${employeesList[0].name}",
                              style: EmployeScreenTextStyle.style4),
                          Text(employeesList[0].patronymic,
                              style: EmployeScreenTextStyle.style5),
                        ],
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
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                padding: const EdgeInsets.all(12),
                width: 400,
                height: 75,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(employeesList[1].imageUrl),
                      radius: 27,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "${employeesList[1].surname} ${employeesList[1].name}",
                            style: EmployeScreenTextStyle.style4),
                        Text(employeesList[1].patronymic,
                            style: EmployeScreenTextStyle.style5),
                      ],
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
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                padding: EdgeInsets.all(12),
                width: 400,
                height: 75,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(employeesList[2].imageUrl),
                      radius: 27,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "${employeesList[2].surname} ${employeesList[2].name}",
                            style: EmployeScreenTextStyle.style4),
                        Text(employeesList[2].patronymic,
                            style: EmployeScreenTextStyle.style5),
                      ],
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
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

// Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           EmployeeInfo(employee: employeesList[0])),
//                 );