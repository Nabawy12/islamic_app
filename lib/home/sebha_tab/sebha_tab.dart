import 'package:flutter/material.dart';

class sebhaTab extends StatefulWidget {

  const sebhaTab({super.key});

  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int sebha = 0 ;
  String text = "سبحان الله" ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
              child: Container(
                alignment: Alignment.center,
                  child: Image(image: AssetImage("assets/images/body_of_sebha.png")))),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("عدد التسبيحات",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
                SizedBox(height: 100,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFB7935F),
                  ),
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("$sebha",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),),
                    )
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    onPressed: (){
                      sebha++;
                      if(sebha==33) {
                        text = "الحمدالله";
                      }
                      if(sebha==63){
                        text = "الله اكبر";
                      }
                      setState(() {

                      });
                    },
                    child: Text(text,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25))
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
