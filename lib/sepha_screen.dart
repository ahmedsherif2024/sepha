import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SephaScreen extends StatefulWidget {
  @override
  State<SephaScreen> createState() => _SephaScreenState();
}

class _SephaScreenState extends State<SephaScreen> {


  List<String> list_praiseAllah = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];

  int counter = 0;
  int round = 0;
  int index = 0;




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'فَذَكِّرْ إِنْ نَفَعَتِ الذِّكْرَى',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,

        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/photo_2023-07-31_17-39-27.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/photo_2023-07-31_17-39-15.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                ),
                Text(
                  list_praiseAllah[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  '$counter',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      incrementCounter();
                    });
                  },
                  child: Text(
                    'اضغط',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    side: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            reset();
                          });
                        },
                        child: Text(
                          'البدء من جديد',
                          style: TextStyle(
                            fontSize: 20.0,

                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        ' رقم الدوره:$round  ',
                        style: TextStyle(

                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );

  }
  void incrementCounter() {

    counter++;
    if(counter ==33) {
      counter = 0;
      index++;
      if(index == 3){
        index = 0;
        round++;
      }
    }

  }

  void reset() {
    counter = 0;
    index = 0;
    round = 0;
  }
}
