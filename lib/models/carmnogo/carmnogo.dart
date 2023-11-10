import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zachem/models/car/car.dart';

part 'carmnogo.freezed.dart';
part 'carmnogo.g.dart';

@freezed
class CarMnogo with _$CarMnogo {

  factory CarMnogo(
    List <Car> cars,
  ) = _CarMnogo;

  factory CarMnogo.fromJson(Map<String, dynamic> json) => _$CarMnogoFromJson(json);
}