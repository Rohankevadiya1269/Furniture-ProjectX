// import 'package:flutter/material.dart';
// import 'package:furniture_app/components/title_text.dart';
// import 'package:furniture_app/services/fetchCategories.dart';
// import 'package:furniture_app/services/fetchProducts.dart';
// import 'package:furniture_app/size_config.dart';

// import 'categories.dart';
// import 'recommond_products.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double defaultSize = SizeConfig.defaultSize;
//     // It enables scrolling
//     return SingleChildScrollView(
//       child: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.all(defaultSize * 2), //20
//               child: TitleText(
//                 title: "Browse by Categories",
//               ),
//             ),
//             FutureBuilder(
//               future: fetchCategories(),
//               builder: (context, snapshot) => snapshot.hasData
//                   ? Categories(categories: snapshot.data)
//                   : Center(child: Image.asset("assets/ripple.gif")),
//             ),
//             Divider(height: 5),
//             Padding(
//               padding: EdgeInsets.all(defaultSize * 2), //20
//               child: TitleText(title: "Recommands For You"),
//             ),
//             // Right Now product is our demo product
//             FutureBuilder(
//               future: fetchProducts(),
//               builder: (context, snapshot) {
//                 return snapshot.hasData
//                     ? RecommandProducts(products: snapshot.data)
//                     : Center(child: Image.asset('assets/ripple.gif'));
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:furniture_app/components/title_text.dart';
import 'package:furniture_app/models/Categories.dart';
import 'package:furniture_app/services/fetchCategories.dart';
import 'package:furniture_app/services/fetchProducts.dart';
import 'package:furniture_app/size_config.dart';

import 'categories.dart';
import 'recommond_products.dart';
import 'package:furniture_app/models/Product.dart';
// import 'package:furniture_app/models/Category.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize;
    // It enables scrolling
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize! * 2), //20
              child: TitleText(
                key: UniqueKey(), // Provide a unique key here
                title: "Browse by Categories",
              ),
            ),

            FutureBuilder<List<Category>>(
              future: fetchCategories(),
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data != null) {
                  return Categories(categories: snapshot.data!);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
            Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2), //20
              child: TitleText(
                key: UniqueKey(), // Provide a unique key here
                title: "Recommands For You",
              ),
            ),

            FutureBuilder<List<Product>>(
              future: fetchProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data != null) {
                  return RecommandProducts(products: snapshot.data!);
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
