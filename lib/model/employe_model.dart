class EmployeeModel {
  final String imageUrl; // image / avatar/ imgUrl
  final String surname;
  final String name;
  final String patronymic; // отчество
  final String dateofbirth; //Дата рождение
  final String direction; //направление
  final String department; //отдел
  final String position; // должность
  final String email;
  final String phoneNumberFirst;
  final String phoneNumberSecond;
  final String phoneNumberWA;

  EmployeeModel({
    required this.imageUrl,
    required this.surname,
    required this.name,
    required this.patronymic,
    required this.dateofbirth,
    required this.direction,
    required this.department,
    required this.position,
    required this.email,
    required this.phoneNumberFirst,
    required this.phoneNumberSecond,
    required this.phoneNumberWA,
  });
}

List<EmployeeModel> employeesList = [
  EmployeeModel(
      imageUrl: 'assets/Ellipse28.png',
      surname: 'Жыпаркулов',
      name: "Мырзабек",
      patronymic: "Жыпаркулович",
      email: "mjagarkulov@gosecotech.kg",
      phoneNumberFirst: "+9965501234321",
      phoneNumberSecond: "+9965551234321",
      phoneNumberWA: "+9965551234321",
      dateofbirth: '16.09.1972',
      department: 'Дирекция управления',
      direction: 'Отдел управления',
      position: 'Генеральный директор'),
  EmployeeModel(
    imageUrl: 'assets/Ellipse29.png',
    surname: 'Абдымалик',
    name: "Жаныш",
    patronymic: "Абдымаликович",
    email: "jabdymalik@gosecotech.kg",
    phoneNumberFirst: "+9965501234323",
    phoneNumberSecond: "+9965551234325",
    phoneNumberWA: "+9965551234323",
    dateofbirth: '13.02.1975',
    department: 'Дирекция управления',
    direction: 'Отдел управления',
    position: 'Зам директора',
  ),
  EmployeeModel(
    imageUrl: 'assets/Ellipse30.png',
    surname: 'Сыдыков',
    name: "Бакыт",
    patronymic: "Кыдырбекович",
    email: "bsydykov@gosecotech.kg",
    phoneNumberFirst: "+9965501233423",
    phoneNumberSecond: "+996500123563",
    phoneNumberWA: "+996700984465",
    dateofbirth: '05.07.1969',
    department: 'Отдел Координации',
    direction: 'Кординатор',
    position: 'Начальник Координации ',
  ),
  EmployeeModel(
    imageUrl: 'assets/Ellipse31.png',
    surname: 'surname',
    name: "name",
    patronymic: "patronymic",
    email: "email",
    phoneNumberFirst: "phoneNumberFirst",
    phoneNumberSecond: "phoneNumberSecond",
    phoneNumberWA: "phoneNumberWA",
    dateofbirth: '16.09.1972',
    department: 'Дирекция управления',
    direction: 'Отдел управления',
    position: '',
  ),
  EmployeeModel(
    imageUrl: 'assets/Ellipse33.png',
    surname: 'surname',
    name: "name",
    patronymic: "patronymic",
    email: "email",
    phoneNumberFirst: "phoneNumberFirst",
    phoneNumberSecond: "phoneNumberSecond",
    phoneNumberWA: "phoneNumberWA",
    dateofbirth: '16.09.1972',
    department: 'Дирекция управления',
    direction: 'Отдел управления',
    position: '',
  ),
];
