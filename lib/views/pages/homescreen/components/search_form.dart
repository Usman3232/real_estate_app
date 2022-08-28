import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/size_config.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: 'Search..',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black12)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(color: Colors.black12)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(color: Colors.black12)),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 12,
                child: Image.asset('assets/icons/searchbutton.png')),
          ),
        ),
      ),
    );
  }
}
