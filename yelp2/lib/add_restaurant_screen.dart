import 'package:flutter/material.dart';
import 'package:yelp2/buttons.dart';
import 'package:yelp2/input_field.dart';
import 'package:yelp2/providers/region_provider.dart';
import 'package:yelp2/screen.dart';

class AddRestaurantScreenArgs {
  final Region region;

  const AddRestaurantScreenArgs(this.region);
}

class AddRestaurantScreen extends StatelessWidget {
  final AddRestaurantScreenArgs args;
  final TextEditingController nameController = TextEditingController();
  AddRestaurantScreen(this.args, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Column(children: [
        InputField(
          label: 'Name',
          controller: nameController,
          hintText: 'eg.: muto Restaurant',
        ),
        Button.primary(text: 'Create Restaurant')
      ]),
    );
  }
}
