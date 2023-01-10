// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/result_screen.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  var servicewater = ['1. ทั่วไป ', '2. กปภ สาขาภูเก็ต', '3. เอกชน'];
  var typewater = ['1. ที่อยู่อาศัย ', '2. ราชการ ', '3. รัฐวิสาหกิจ'];
  var sizewater = ['1. 1/2 ', '2. 3/4 ', '3. 1 ', '4. 1/2'];

  TextEditingController service = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController size = TextEditingController();
  TextEditingController usewater = TextEditingController();

  static double _reslut = 0;
  static double _tax = 0;
  static int _size = 0;
  int newservice = 0;
  int newtype = 0;
  double newusewater = 0;
  int newsize = 0;
  double count = 0;
  double result = 0;
  double tax = 0;
  String sizetwo = '';

  List<double> number = [];
  List<double> price = [];
  List<dynamic> _ans = [];

  void resultPage() {
    newservice = int.parse(service.text);
    newtype = int.parse(type.text);
    newsize = int.parse(size.text);
    newusewater = double.parse(usewater.text);
    serviceCalculate(newsize);
    condition(newservice, newtype);
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: ((context) {
        return ResultScreen(
          result: _ans,
          size: _size,
        );
      })));
    });
  }

  int serviceCalculate(int newsize) {
    this.newsize = newsize;
    switch (newsize) {
      case 1:
        newsize = newsize + 30 - 1;
        print(newsize);
        break;
      case 2:
        newsize = newsize + 50 - 2;
        print(newsize);
        break;
      case 3:
        newsize = newsize + 60 - 3;
        print(newsize);
        break;
      case 4:
        newsize = newsize + 90 - 4;
        print(newsize);
        break;
      default:
    }
    _size = newsize;
    return _size;
  }

  void condition(int newservice, int newtype) {
    this.newservice = newservice;
    this.newtype = newtype;

    if (newservice == 1 && newtype == 1) {
      function1();
    } else if (newservice == 1 && newtype == 2) {
      function2();
    } else if (newservice == 1 && newtype == 3) {
      function3();
    } else if (newservice == 2 && newtype == 1) {
      function4();
    } else if (newservice == 2 && newtype == 2) {
      function5();
    } else if (newservice == 2 && newtype == 3) {
      function6();
    } else if (newservice == 3 && newtype == 1) {
      function7();
    } else if (newservice == 3 && newtype == 2) {
      function8();
    } else if (newservice == 3 && newtype == 3) {
      function9();
    }
  }

  void function1() {
    price = [
      10.2,
      16.0,
      19.0,
      21.20,
      21.60,
      21.65,
      21.7,
      21.75,
      21.8,
      21.85,
      21.90,
    ];
    calculatWather(newusewater, number, price, count, result, tax, sizetwo);
  }

  void function2() {
    price = [
      16.0,
      19.0,
      20.0,
      21.50,
      21.60,
      21.65,
      21.7,
      21.75,
      21.8,
      21.85,
      21.90
    ];
    calculatWather(newusewater, number, price, count, result, tax, sizetwo);
  }

  void function3() {
    price = [
      18.0,
      21.0,
      24.0,
      27.0,
      29.0,
      29.25,
      29.50,
      29.75,
      29.5,
      29.25,
      29.00
    ];
    calculatWather(newusewater, number, price, count, result, tax, sizetwo);
  }

  void function4() {
    price = [
      10.2,
      16.0,
      19.0,
      21.20,
      24.00,
      26.0,
      30.25,
      30.25,
      30.25,
      30.25,
      30.25
    ];
    calculatWather(newusewater, number, price, count, result, tax, sizetwo);
  }

  void function5() {
    price = [
      18.0,
      21.0,
      22.0,
      23.0,
      24.00,
      26.00,
      30.25,
      30.25,
      30.25,
      30.25,
      30.25
    ];
    calculatWather(newusewater, number, price, count, result, tax, sizetwo);
  }

  void function6() {
    price = [
      18.50,
      22.0,
      26.0,
      29.0,
      31.00,
      32.50,
      33.5,
      34.75,
      34.75,
      34.75,
      34.75
    ];
    calculatWather(newusewater, number, price, count, result, tax, sizetwo);
  }

  void function7() {
    price = [
      10.2,
      16.0,
      19.0,
      21.20,
      23.0,
      24.0,
      27.0,
      27.5,
      27.6,
      27.8,
      28.00
    ];
    calculatWather(newusewater, number, price, count, result, tax, sizetwo);
  }

  void function8() {
    price = [
      17.0,
      20.0,
      21.0,
      22.00,
      23.00,
      24.00,
      27.40,
      27.50,
      27.6,
      27.8,
      28.0
    ];
    calculatWather(newusewater, number, price, count, result, tax, sizetwo);
  }

  void function9() {
    price = [
      18.25,
      21.5,
      25.5,
      28.50,
      31.00,
      31.50,
      31.75,
      31.70,
      32.0,
      32.25,
      32.25
    ];
    calculatWather(newusewater, number, price, count, result, tax, sizetwo);
  }

  List<dynamic> calculatWather(
      double newusewater,
      List<double> number,
      List<double> price,
      double count,
      double result,
      double tax,
      String sizetwo) {
    this.newusewater = newusewater;
    this.number = number;
    this.price = price;
    this.count = count;
    this.result = result;
    this.tax = tax;
    this.sizetwo = sizetwo;
    number = [
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
    ];
    if (newusewater > 3000) {
      count = newusewater - 3000;
      number[10] = count * price[10];
      newusewater = 3000;
    }
    if (newusewater <= 3000 && newusewater >= 2001) {
      count = newusewater - 2000;
      number[9] = count * price[9];
      newusewater = 2000;
    }
    if (newusewater > 1000 && newusewater <= 2000) {
      count = newusewater - 1000;
      number[8] = count * price[8];
      newusewater = 1000;
    }
    if (newusewater > 300 && newusewater <= 1000) {
      count = newusewater - 300;
      number[7] = count * price[7];
      newusewater = 300;
    }
    if (newusewater > 100 && newusewater <= 300) {
      count = newusewater - 100;
      number[6] = count * price[6];
      newusewater = 100;
    }
    if (newusewater > 80 && newusewater <= 100) {
      count = newusewater - 80;
      number[5] = count * price[5];
      newusewater = 80;
    }
    if (newusewater > 50 && newusewater <= 80) {
      count = newusewater - 50;
      number[4] = count * price[4];
      newusewater = 50;
    }
    if (newusewater > 30 && newusewater <= 50) {
      count = newusewater - 30;
      number[3] = count * price[3];
      newusewater = 30;
    }
    if (newusewater > 20 && newusewater <= 30) {
      count = newusewater - 20;
      number[2] = count * price[2];
      newusewater = 20;
    }
    if (newusewater > 10 && newusewater <= 20) {
      count = newusewater - 10;
      number[1] = count * price[1];
      newusewater = 10;
    }
    if (newusewater > 0 && newusewater <= 10) {
      count = newusewater;
      number[0] = count * price[0];
    }
    for (int i = 0; i < number.length; i++) {
      result += number[i];
    }
    _reslut = result;
    print(_reslut);
    tax = (7 / 100) * (result + _size);
    sizetwo = tax.toStringAsPrecision(4);
    print(tax);
    _tax = double.parse(sizetwo);
    _ans = [
      _reslut,
      _tax,
    ];
    print(_ans);
    return _ans;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'ประปาที่ใช้บริการ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
            '[ ${servicewater[0]}] [ ${servicewater[1]}]  [ ${servicewater[2]} ]'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            keyboardType: TextInputType.number,
            obscureText: false,
            controller: service,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '  ประปาที่ใช้บริการ  ',
                hintText: 'ป้อนหมายเลข 1 - 3'),
          ),
        ),
        const Text(
          'ประเภทผู้ใช้ ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text('[ ${typewater[0]}] [ ${typewater[1]}]  [ ${typewater[2]} ]'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            controller: type,
            keyboardType: TextInputType.number,
            obscureText: false,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '  ประปาที่ใช้บริการ  ',
                hintText: 'ป้อนหมายเลข 1 - 3'),
          ),
        ),
        const Text(
          'ขนาดมาตรวัดน้ำ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
            '[ ${sizewater[0]}] [ ${sizewater[1]}]  [ ${sizewater[2]} ]  [ ${sizewater[3]} ] นิ้ว'),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            controller: size,
            keyboardType: TextInputType.number,
            obscureText: false,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '  ขนาดมาตรวัดน้ำ  ',
                hintText: 'ป้อนหมายเลข 1 - 4'),
          ),
        ),
        const Text(
          'ปริมาณการใช้น้ำ',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextFormField(
            controller: usewater,
            keyboardType: TextInputType.number,
            obscureText: false,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '  ขนาดมาตรวัดน้ำ  ',
                hintText: 'หน่วย'),
          ),
        ),
        GestureDetector(
          onTap: resultPage,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber[500],
            ),
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: const Text(
              "CALCULATE !",
              style: TextStyle(
                //color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
