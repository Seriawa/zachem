import 'package:flutter/material.dart';
import 'package:zachem/models/car/car.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  final index;

  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text("${car.model}, color: ${car.color}"),
        subtitle: Text("price: ${car.price}"),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (car.availability)
              const Icon(Icons.time_to_leave,
                  size: 30, color: Color.fromARGB(255, 0, 255, 153))
            else
              const Icon(Icons.time_to_leave,
                  size: 30, color: Color.fromARGB(255, 255, 0, 93)),
          ],
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(index.toString()),
          ],
        ),
      ),
    );
  }
}
