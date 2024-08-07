import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sebhaTab extends StatefulWidget {

  const sebhaTab({super.key});

  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  String text = "";
  int sebha = 0 ;
  double turns = 0.0 ;
  @override
  Widget build(BuildContext context) {
    if(sebha==0){text = AppLocalizations.of(context)!.sebha_button_1;}
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
              child: Container(
                alignment: Alignment.center,
                  child:
                  AnimatedRotation(
                    turns: turns,
                      duration: Duration(seconds: 1),
                      child: Image(image: AssetImage("assets/images/body_of_sebha.png")),
                  )
              )
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(AppLocalizations.of(context)!.sebha_title,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 25),),
                SizedBox(height: 100,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFB7935F),
                  ),
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("$sebha",textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 30),),
                    )
                ),
                SizedBox(height: 50,),
                ElevatedButton(
                    style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: Theme.of(context).buttonColor,
                    ),
                    onPressed: (){
                      sebha++;
                      turns += 1 / 30 ;

                      if(sebha==33) {
                        text = AppLocalizations.of(context)!.sebha_button_2;
                      }
                      if(sebha==63){
                        text = AppLocalizations.of(context)!.sebha_button_3;
                      }

                      if(sebha==93){
                        sebha = 0;
                      }
                      setState(() {

                      });
                    },
                    child: Text(text,style: Theme.of(context).textTheme.bodyMedium,),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}
