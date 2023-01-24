import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:world_of_shopping/login.dart';
//import 'package:world_of_shopping/login.dart';
import 'Model/slideimg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Model/prod.dart';
import 'Model/cate.dart';
//import 'package:http/http.dart' as http;
//import 'Model/prod.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'catroute.dart';
import 'Model/API.dart';
import 'provider/catapi.dart';
import 'package:provider/provider.dart';
import 'route.dart';
//import 'dart:async';
//import 'catroute.dart';
//import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(Shp_App());

class Shp_App extends StatelessWidget {
  const Shp_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ApiCat>(create: (context) => ApiCat())
      ],
      child: MaterialApp(
        title: 'World of Shopping',
        theme: ThemeData(
          primaryColor: Color.fromARGB(255, 255, 255, 255),
          // backgroundColor: Color.fromARGB(0, 0, 0, 255),
          cardColor: Color.fromARGB(255, 165, 192, 222),
          //primarySwatch: Colors.,
          scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        onGenerateRoute: PageRouteee.generateRoute,
        initialRoute: 'login',
      ),
    );
  }
}

class Wrld_Shp extends StatefulWidget {
  const Wrld_Shp({super.key});

  @override
  State<Wrld_Shp> createState() => _Wrld_ShpState();
}

class _Wrld_ShpState extends State<Wrld_Shp> {
  List<Categorie> catl = [];

  @override
  void initState() {
    Httprequestss.get(context);
    ApiCat acat = ApiCat();
    catl = acat.catlist;
    super.initState();
  }

  _launchURLApp(int i) async {
    var url = Uri.parse(SlideImg.slide[i].url.toString());
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SnoWhite',
          style: TextStyle(fontFamily: 'Lobster'),
        ),
        backgroundColor: Color.fromARGB(255, 22, 54, 91),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: SlideImg.slide.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                child: TextButton(
                  onPressed: () {
                    _launchURLApp(itemIndex);
                  },
                  child: Image.network(
                    SlideImg.slide[itemIndex].img.toString(),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
                width: MediaQuery.of(context).size.width,

                // margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
                // decoration: BoxDecoration(
                //   color: Colors.deepOrangeAccent[200],
                // ),
              ),
              options: CarouselOptions(
                height: 200,
                autoPlay: false,
                // autoPlayInterval: Duration(seconds: 1),
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  'اقسام',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 22, 54, 91),
                  ),
                ),
              ),
            ),
            Divider(
              //  color: Color.fromARGB(255, 22, 54, 91),
              height: 10,
              indent: 280,
              endIndent: 10,
              thickness: 3,
            ),
            Consumer<ApiCat>(
              builder: (context, value, child) => Directionality(
                textDirection: TextDirection.rtl,
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 3),
                    height: MediaQuery.of(context).size.height * .40,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: value.catlist.length,
                      shrinkWrap: true,
                      reverse: false,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * .20,
                        child: Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          // color: Color.fromARGB(255, 0, 255, 17),
                          margin: EdgeInsets.all(5),
                          // fromLTRB(7,20,7,20),
                          // shadowColor: Colors.brown,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Croute(value.catlist[index].id ?? 1)),
                              );
                            },
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(60)),
                                    height: MediaQuery.of(context).size.height *
                                        .15,
                                    width:
                                        MediaQuery.of(context).size.width * .45,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                        value.catlist[index].image.toString(),
                                      ),
                                      //child: Image.network(
                                      //       Cate.Clist[index].img.toString(),
                                      //       fit: BoxFit.fill),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  value.catlist[index].name.toString(),
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 22, 54, 91),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  'تخفيضات',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 22, 54, 91)),
                ),
              ),
            ),
            Divider(
              //color: Colors.black,
              height: 10,
              indent: 280,
              endIndent: 10,
              thickness: 3,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.fromLTRB(20, 7, 20, 7),
                  child: ListTile(
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 30, 0),
                    leading:
                        // Container(
                        //   //margin: EdgeInsets.fromLTRB(40, 0, 20, 0),
                        //   //  height: MediaQuery.of(context).size.width / 100 * 30,
                        //   width: MediaQuery.of(context).size.width / 100 * 20,
                        //   child:
                        Container(
                      //alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(20, 15, 5, 0),
                      padding: EdgeInsets.fromLTRB(15, 10, 2, 2),
                      child: Transform.scale(
                        scale: 3.5,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            Discounts.Dislist[index].img.toString(),
                          ),
                          radius: 20,
                        ),
                      ),
                    ),
                    // ),
                    title: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Discounts.Dislist[index].name.toString(),
                            style: TextStyle(
                              color: Color.fromARGB(255, 22, 54, 91),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Discounts.Dislist[index].price.toString() +
                                    ' YER',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 22, 54, 91),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                Discounts.Dislist[index].oldprice.toString() +
                                    ' YER',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 22, 54, 91),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                          Transform.scale(
                            scale: 0.5,
                            child: RatingBar.builder(
                              initialRating: double.parse(
                                  Discounts.Dislist[index].rating.toString()),
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemBuilder: (context, _) => Icon(
                                size: 5,
                                Icons.star,
                                color: Color.fromARGB(255, 22, 54, 91),
                              ),
                              onRatingUpdate: (double value) {},
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                barrierDismissible: true,
                                builder: (BuildContext cont) {
                                  return SizedBox(
                                      width: 600,
                                      child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SimpleDialog(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              elevation: 0.0,
                                              contentPadding:
                                                  const EdgeInsets.all(12),
                                              backgroundColor: Color.fromARGB(
                                                  255, 165, 192, 222),
                                              children: <Widget>[
                                                Directionality(
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  child: TextFormField(
                                                    cursorColor: Color.fromARGB(
                                                        255, 22, 54, 91),
                                                    decoration:
                                                        const InputDecoration(
                                                            icon: Icon(
                                                              Icons
                                                                  .perm_contact_calendar,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      22,
                                                                      54,
                                                                      91),
                                                            ),
                                                            labelText:
                                                                " اسم العميل ",
                                                            labelStyle:
                                                                TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      22,
                                                                      54,
                                                                      91),
                                                            )),
                                                    onChanged:
                                                        (String value) {},
                                                    expands: false,
                                                    onSaved: (value) =>
                                                        value = value,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Directionality(
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  child: TextFormField(
                                                    cursorColor: Color.fromARGB(
                                                        255, 22, 54, 91),
                                                    decoration:
                                                        const InputDecoration(
                                                            labelText:
                                                                " رقم الهاتف ",
                                                            icon: Icon(
                                                              Icons.phone,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      22,
                                                                      54,
                                                                      91),
                                                            ),
                                                            labelStyle:
                                                                TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      22,
                                                                      54,
                                                                      91),
                                                            )),
                                                    onChanged:
                                                        (String value) {},
                                                    expands: false,
                                                    onSaved: (value) =>
                                                        value = value,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                SizedBox(
                                                  width: 200,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary: Color.fromARGB(
                                                          255, 22, 54, 91),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40)),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      ResponseMessaage
                                                          .awesomeDialog(
                                                        context: context,
                                                        dialogType:
                                                            DialogType.SUCCES,
                                                        message: " Success ",
                                                        color: Color.fromARGB(
                                                            255, 22, 54, 91),
                                                      );
                                                    },
                                                    child: const Text(
                                                      'شراء',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ])));
                                },
                              );
                            },
                            child: SizedBox(
                              width: 125,
                              child: Row(
                                children: [
                                  Text(
                                    'اضافة الى السلة',
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.shopping_bag_outlined)
                                ],
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 22, 54, 91),
                              shadowColor: Colors.white,
                              // Background color

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                shrinkWrap: true,
                itemCount: Discounts.Dislist.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
