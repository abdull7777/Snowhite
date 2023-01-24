import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'Model/prod.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Croute extends StatefulWidget {
  final int id;
  const Croute(this.id, {Key? key}) : super(key: key);

  @override
  State<Croute> createState() => _CrouteState();
}

class _CrouteState extends State<Croute> {
  List<Prod> catroute = [];
  String? name;
  @override
  void initState() {
    switch (widget.id) {
      case 1:
        catroute = ProdList.Menly;
        name = 'Men';
        break;
      case 2:
        catroute = ProdList.Women;
        name = 'Women';
        break;
      case 6:
        catroute = ProdList.Boys;
        name = 'Boys';
        break;
      case 4:
        catroute = ProdList.Girls;
        name = 'Girls';
        break;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 22, 54, 91),
        centerTitle: true,
        title: const Text(
          'SnoWhite',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Lobster',
            color: Colors.white,
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView.builder(
          itemBuilder: (context, index) => Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.fromLTRB(20, 10, 20, 7),
            child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(0, 0, 30, 0),
              leading: Container(
                //alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(20, 15, 5, 0),
                padding: EdgeInsets.fromLTRB(15, 10, 2, 2),
                // width: MediaQuery.of(context).size.width / 100 * 20,
                // height: MediaQuery.of(context).size.height,
                child: Transform.scale(
                  scale: 3.5,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      catroute[index].img.toString(),

                      // fit: BoxFit.fitHeight,
                      // height: MediaQuery.of(context).size.height,
                    ),
                    radius: 20,
                  ),
                ),
              ),
              title: SizedBox(
                width: MediaQuery.of(context).size.width / 100 * 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          catroute[index].name.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "السعر:  ${catroute[index].price.toString()}",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Transform.scale(
                      scale: 0.5,
                      child: RatingBar.builder(
                        initialRating:
                            double.parse(catroute[index].rating.toString()),
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemBuilder: (context, _) => Icon(
                          size: 10,
                          Icons.star,
                          color: Color.fromARGB(255, 22, 54, 91),
                        ),
                        onRatingUpdate: (double value) {},
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                                                BorderRadius.circular(10)),
                                        elevation: 0.0,
                                        contentPadding:
                                            const EdgeInsets.all(12),
                                        backgroundColor:
                                            Color.fromARGB(255, 165, 192, 222),
                                        children: <Widget>[
                                          Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: TextFormField(
                                              cursorColor: Color.fromARGB(
                                                  255, 22, 54, 91),
                                              decoration: const InputDecoration(
                                                  icon: Icon(
                                                    Icons.perm_contact_calendar,
                                                    color: Color.fromARGB(
                                                        255, 22, 54, 91),
                                                  ),
                                                  labelText: " اسم العميل ",
                                                  labelStyle: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 22, 54, 91),
                                                  )),
                                              onChanged: (String value) {},
                                              expands: false,
                                              onSaved: (value) => value = value,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Directionality(
                                            textDirection: TextDirection.rtl,
                                            child: TextFormField(
                                              cursorColor: Color.fromARGB(
                                                  255, 22, 54, 91),
                                              decoration: const InputDecoration(
                                                  labelText: " رقم الهاتف ",
                                                  icon: Icon(
                                                    Icons.phone,
                                                    color: Color.fromARGB(
                                                        255, 22, 54, 91),
                                                  ),
                                                  labelStyle: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 22, 54, 91),
                                                  )),
                                              onChanged: (String value) {},
                                              expands: false,
                                              onSaved: (value) => value = value,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 200,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Color.fromARGB(
                                                    255, 22, 54, 91),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40)),
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                                ResponseMessaage.awesomeDialog(
                                                  context: context,
                                                  dialogType: DialogType.SUCCES,
                                                  message: " success ",
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
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          shrinkWrap: true,
          itemCount: catroute.length,
        ),
      ),
    );
  }
}

class ResponseMessaage {
  static awesomeDialog({
    required String message,
    required BuildContext context,
    DialogType? dialogType,
    Color? color,
    String? btnCancel,
    String? description,
    String? btnOkText,
    Function()? btnOkOnPress,
    Function()? btnCancelOnPress,
    bool? dismissOnBackKeyPress,
  }) {
    return AwesomeDialog(
      context: context,
      dialogType: dialogType ?? DialogType.ERROR,
      animType: AnimType.SCALE,
      dismissOnBackKeyPress: dismissOnBackKeyPress ?? true,
      headerAnimationLoop: false,
      title: message.toString(),
      btnOkOnPress: btnOkOnPress ?? () {},
      btnCancelOnPress: btnCancelOnPress,
      btnCancelColor:
          btnOkOnPress != null ? Color.fromARGB(255, 165, 192, 222) : null,
      btnCancelText: btnCancel,
      desc: description,
      buttonsTextStyle: const TextStyle(
          fontSize: 16,
          overflow: TextOverflow.ellipsis,
          fontWeight: FontWeight.w700),
      btnOkColor: color ?? Color.fromARGB(255, 22, 54, 91),
      // dialogBackgroundColor: Colors.deepOrangeAccent,
    ).show();
  }
}
