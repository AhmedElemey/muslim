import 'package:flutter/material.dart';
import 'package:muslim/view_model/list_view_model.dart';
import 'package:provider/provider.dart';
import 'package:muslim/model/ad3eya.dart';

class Ad3eyaScreen extends StatefulWidget {
  static final routeName = '/ad3eya-screen';
  @override
  _Ad3eyaScreenState createState() => _Ad3eyaScreenState();
}

class _Ad3eyaScreenState extends State<Ad3eyaScreen> {
  bool _isLoading = false;
  Ad3eya ad3eya;
  List<Ad3eyas> ad3eyaList = [];

  Future getAd3eyaData() async {
    if (this.mounted)
      setState(() {
        _isLoading = true;
      });
    final getAd3eya = Provider.of<ListViewModel>(context, listen: false);
    await getAd3eya.fetchAd3eyaList().then((response) {
      ad3eya = response;
      ad3eyaList = response.data.ad3eya;
    });
    if (this.mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void initState() {
    Future.microtask(() => getAd3eyaData());
    super.initState(); // de 3ashan awel lama aload el screen t7mel el data
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}
