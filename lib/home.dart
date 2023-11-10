import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:zachem/models/car/car.dart';
import 'package:zachem/models/carmnogo/carmnogo.dart';
import 'package:zachem/wiget/wiget.dart';

enum StatusData {
  init,
  loading,
  success,
  error,
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  Dio client = Dio();
  String url = 'https://myfakeapi.com/api/cars/';
  List<Car> carList = [];

  void getNetworkData() async {
    Response response = await client.get(url);
    carList = CarMnogo.fromJson(response.data).cars;
    setState(() {});
  }

  @override
  void initState() {
    getNetworkData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: carList.length,
                itemBuilder: (context, index) {
                  return CarWidget(car: carList[index], index: index + 1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}