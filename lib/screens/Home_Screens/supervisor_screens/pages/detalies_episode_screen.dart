import 'package:flutter/material.dart';
import 'package:itqan/core/constants/manger_fonts.dart';
import 'package:itqan/core/constants/manger_route.dart';
import 'package:itqan/core/constants/manger_string.dart';
import 'package:itqan/utils/style/app_color.dart';
import 'package:itqan/widget/text_app_bar.dart';

class DetailsEpisodeScreen extends StatefulWidget {
  const DetailsEpisodeScreen({Key? key}) : super(key: key);

  @override
  State<DetailsEpisodeScreen> createState() => _DetailsEpisodeScreenState();
}

class _DetailsEpisodeScreenState extends State<DetailsEpisodeScreen> {
  @override
  Widget build(BuildContext context) {

    TableRow tableRow0 =  TableRow(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      children: <Widget> [
        Padding(
            padding: EdgeInsets.all(10),
            child: Text(""),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(MangerString.from),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(MangerString.to),
        ),
      ]
    );
    TableRow tableRow1 =  TableRow(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("التاريخ"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("20/05/2023"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("20/05/2023"),
          ),
        ]
    );
    TableRow tableRow2 =  TableRow(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("data 1"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("data 2"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("data 2"),
          ),
        ]
    );
    TableRow tableRow3 =  TableRow(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        children: <Widget> [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("data 1"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("data 2"),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("data 2"),
          ),
        ]
    );


    return Directionality(
         textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
            onPressed: () {
    Navigator.pushNamed(
    context, Routes.bottomNavigationBarScreenSupervisor);
    },
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    ),
    title: const TextAppBar(
    title: MangerString.detailsEpisode,
    ),
    centerTitle: true,
    backgroundColor: AppColor.buttonColor_1,
    ),

          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  const MyText(text:MangerString.detailsEpisodeName),
                  const MyText(text:MangerString.nameUser),
                  const MyText(text:MangerString.detailsEpisodeNumber),
                  const MyText(text:MangerString.detailsEpisodeRate),
                  const SizedBox(height: 10,),

                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context,index){
                        return Container(
                          margin: const EdgeInsets.all(20),
                          width: 320,height: 230,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all()
                          ),
                          child: Column(
                            children: [
                              const MyText(text:MangerString.studentNameDetailsEpisode),
                              Table(
                                border: TableBorder.all(),
                                defaultColumnWidth: const FixedColumnWidth(90.0),
                                children: <TableRow>[
                                  tableRow0,
                                  tableRow1,
                                  tableRow2,
                                  tableRow3,
                                ],
                              ),
                            ],
                          ),
                        );
                      },

                    ),
                  ),
                ],
              ),
            ),
          ),

        ));
  }
}

class MyText extends StatelessWidget {
  const MyText({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style: const TextStyle(
       fontFamily: MangerFonts.cairo,
      fontSize: 16,
      fontWeight:FontWeight.bold,
      color: AppColor.buttonColor_1,
    ),);
  }
}
