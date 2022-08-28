import 'package:flutter/material.dart';
import 'package:real_estate_app/models/homemodel.dart';
import 'package:real_estate_app/utils/TextView.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/utils/size_config.dart';
import 'package:real_estate_app/views/pages/homescreen/components/homecard.dart';
import 'package:real_estate_app/views/pages/homescreen/components/persondetailcontainer.dart';
import 'package:real_estate_app/views/pages/homescreen/components/search_form.dart';
import 'package:real_estate_app/views/pages/homescreen/components/homeappbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            AppBarView(),
            SearchForm(),
            SizedBox(
              height: SizeConfig.heightMultiplier * 3,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    PersondetailContainer(),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: home_model.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: HomeCard(
                            image: home_model[index].image,
                            title: home_model[index].title,
                            location: home_model[index].location,
                            price: home_model[index].price,
                            checkstatus: home_model[index].checkstatus,
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
