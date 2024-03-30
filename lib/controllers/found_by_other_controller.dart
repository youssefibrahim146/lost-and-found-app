import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:lost_found_app/constants/app_imports.dart';

class FoundByOtherController extends GetxController {
  final colorMenuController = DropdownController();
  final typeMenuController = DropdownController();
  final modelMenuController = DropdownController();
  List<CoolDropdownItem<String>> colorsMenu = [
    CoolDropdownItem<String>(
      label: 'Black',
      icon: Container(
        margin: EdgeInsets.only(left: 10),
        height: 20,
        width: 20,
        color: Colors.black,
      ),
      value: 'black',
    ),
    CoolDropdownItem<String>(
      label: 'Red',
      icon: Container(
        margin: EdgeInsets.only(left: 10),
        height: 20,
        width: 20,
        color: Colors.red,
      ),
      value: 'red',
    ),
  ];
}
