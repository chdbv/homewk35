import 'package:flutter/material.dart';
import 'package:homework35/style/text_style.dart';
import 'model/employe_model.dart';
import 'package:url_launcher/url_launcher.dart';

class EmployeeBottomSheet extends StatelessWidget {
  const EmployeeBottomSheet({Key? key, re, required EmployeeModel employee})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 240, 240, 240),
      height: 600,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.vertical(
      //       top: Radius.circular(20)),
      // ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Позвонить',
                    style: EmployeInfoTextStyle.style5,
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close_outlined),
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
                  const SizedBox(height: 15),
                  Text(
                    "${employeesList[0].surname} ${employeesList[0].name}\n${employeesList[0].patronymic}",
                    style: EmployeInfoTextStyle.style1,
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    color: Color(0xffDEE1E5),
                    thickness: 1,
                  ),
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
                        onPressed: () {
                          _launchPhone(employeesList[0].phoneNumberFirst);
                        },
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  const Divider(
                    color: Color(0xffDEE1E5),
                    thickness: 1,
                  ),
                  const Text(
                    'Телефон рабочий',
                    style: EmployeInfoTextStyle.style3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        employeesList[1].phoneNumberFirst,
                        style: EmployeInfoTextStyle.style4,
                      ),
                      IconButton(
                        onPressed: () {
                          _launchPhone(employeesList[1].phoneNumberFirst);
                        },
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    color: Color(0xffDEE1E5),
                    thickness: 1,
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'Телефон Whatsapp',
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
                        onPressed: () {
                          _launchPhone(employeesList[0].phoneNumberFirst);
                        },
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 30,
                        ),
                      )
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
    );
  }
}

void _launchPhone(String phoneNumber) async {
  String url = 'tel:$phoneNumber';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
