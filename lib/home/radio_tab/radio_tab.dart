import 'package:flutter/material.dart';

class radioTab extends StatelessWidget {
  const radioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/radio.png'),),
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){},
              icon:  Icon(Icons.skip_previous,size: 35,color: Theme.of(context).accentColor),),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                  onPressed: (){},
                 icon: Icon( Icons.play_arrow,size: 35,color: Theme.of(context).accentColor)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: IconButton(
                  onPressed: (){},
                icon: Icon(  Icons.skip_next,size: 35,color: Theme.of(context).accentColor,)),
              ),
            ],
          ),
        )

        ],
      ),
    );
  }
}
