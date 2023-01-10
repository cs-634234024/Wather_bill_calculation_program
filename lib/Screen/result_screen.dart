import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final dynamic result;
  final dynamic size;

  const ResultScreen({
    super.key,
    this.result,
    this.size,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  void backToBodyPage() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(children: const [Text('โปรเเกรมคำนวนน้ำประปา')]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'รวมค่าน้ำ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('${widget.result[0]} บาท',
                      style: TextStyle(fontSize: 20))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('ค่าบริการทั่วไป', style: TextStyle(fontSize: 20)),
                  Text('${widget.size}.00 บาท', style: TextStyle(fontSize: 20))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('ค่าภาษีมูลค่าเพื่ม (7%)',
                      style: TextStyle(fontSize: 20)),
                  Text('${widget.result[1]} บาท',
                      style: TextStyle(fontSize: 20))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('รวมเป็นเงินทั้งสิ้น',
                      style: TextStyle(fontSize: 20)),
                  Text(
                      '${widget.result[0] + widget.result[1] + widget.size} บาท',
                      style: TextStyle(fontSize: 20)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: backToBodyPage,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber[500],
                    ),
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: const Text(
                      "ไปยังหน้าหลัก",
                      style: TextStyle(
                        //color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
