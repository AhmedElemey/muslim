// import 'package:cizaro_app/model/Ad3eya.dart';
// import 'package:cizaro_app/screens/searchBar_screen.dart';
// import 'package:cizaro_app/screens/shop_screen.dart';
// import 'package:cizaro_app/view_model/list_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class GradientAppBar extends StatefulWidget {
  final String title;

  GradientAppBar(this.title);

  @override
  _GradientAppBarState createState() => _GradientAppBarState();
}

class _GradientAppBarState extends State<GradientAppBar> {
  final double barHeight = 50.0;
  var valueCollection, valueCategory, currentSelectedValue;
  // final deviceTypes = ["Mac", "Windows", "Mobile"];
  // var _selection;

  // Ad3eya Ad3eya;
  // List<Collections> collectionsList = [];
  // List<NewArrivals> newArrivalsList = [];
  // List<HotDeals> hotDeals = [];

  // int _value = 1;
//  bool isEnabled;

  // Future getAd3eyaData() async {
  //   final getAd3eya = Provider.of<ListViewModel>(context, listen: false);
  //   await getAd3eya.fetchAd3eyaList().then((response) {
  //     Ad3eya = response;
  //     collectionsList = Ad3eya.data.collections;
  //     newArrivalsList = Ad3eya.data.newArrivals;
  //
  //     print(collectionsList.length);
  //   });
  // }

  // @override
  // void initState() {
  //   Future.microtask(() => getAd3eyaData());
  //   super.initState(); // de 3ashan awel lama aload el screen t7mel el data
  // }
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    Map _mySelection;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: Row(
        children: [
          Row(
            children: [
              // Container(
              //   child: PopupMenuButton<String>(
              //     onSelected: (String value) {
              //       Navigator.of(context).pushNamed(ShopScreen.routeName,
              //           arguments: {'collection_id': int.parse(value)});
              //     },
              //     child: Container(
              //       width: MediaQuery.of(context).size.width * .11,
              //       child: Icon(
              //         Icons.menu,
              //         size: 25,
              //         color: Colors.white,
              //       ),
              //     ),
              //     itemBuilder: (context) => collectionsList
              //         .map((item) => PopupMenuItem<String>(
              //       child: Text(item.name),
              //       value: item.id.toString(),
              //     ))
              //         .toList(),
              //   ),
              // ),
              Image.asset(
                "assets/images/logo.png",
                height: MediaQuery.of(context).size.height * .06,
              )
            ],
          ),
          Spacer(),
          Center(
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          // Container(
          //   padding: EdgeInsets.all(7.0),
          //   child: CircleAvatar(
          //     backgroundColor: Colors.white,
          //     child: IconButton(
          //       icon: Icon(
          //         Icons.search,
          //       ),
          //       onPressed: () {
          //         Navigator.of(context).pushNamed(SearchBarScreen
          //             .routeName); //    showSearch(context: context, delegate: Search());
          //       },
          //     ),
          //   ),
          // )
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff622321), Color(0xff23121)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0]),
      ),
    );
  }
}
