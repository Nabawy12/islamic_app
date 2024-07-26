import 'package:flutter/material.dart';

class hadethTab extends StatelessWidget {
  const hadethTab({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Expanded(flex:1,child: Image(image: AssetImage('assets/images/hadith_header.png'))),
          Container(
            alignment: Alignment.center,
            //width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(color: Colors.black,width: 2))
            ),
            child: Text("الأحاديث",style: TextStyle(fontSize:25,fontWeight: FontWeight.w600 ),),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) =>
                        Text("الحديث رقم ${index+1}",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                        ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}
class hadethArguments {

  String hadetharguments;
  int index ;
  hadethArguments({required this.hadetharguments, required this.index});
}