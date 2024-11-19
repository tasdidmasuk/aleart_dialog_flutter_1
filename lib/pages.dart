import 'package:flutter/material.dart';

class AleartDialog extends StatefulWidget {
  const AleartDialog({super.key});

  @override
  State<AleartDialog> createState() => _AleartDialogState();
}

class _AleartDialogState extends State<AleartDialog> {

  Future <void> showAleartDialog() async{
    return showDialog(context: context, builder: (BuildContext contex){
      return AlertDialog(
        backgroundColor: Colors.grey[800],
        title: Text("Simple Aleart Dialog", style: TextStyle(color: Colors.white),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text("Welcome to Tasdid Masuk", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Ok",
            style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold),))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],

      appBar: AppBar(

        title: Text("Aleart Dialog",style: TextStyle(fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 25),),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 270,),
            ElevatedButton(onPressed: (){showAleartDialog();},style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
                foregroundColor: Colors.white, shadowColor: Colors.blue), child: Text("Display Simple Aleart Dialog")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext context){
                return DisplayAdvanceCustomDialog();
              });

            }, style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
                foregroundColor: Colors.white, shadowColor: Colors.blue), child: Text("Display Custom Aleart Dialog"))
          ],
        ),
      ),


    );
  }
}

class DisplayAdvanceCustomDialog extends StatelessWidget {
  const DisplayAdvanceCustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.grey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Stack(alignment: Alignment.topCenter,
        children: [
          Container(
            height: 230,
            child: Padding(padding: EdgeInsets.fromLTRB(10, 130, 10, 10),
            child: Column(
              children: [
                Text("Welcome to Tasdid Masuk", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white
                    ),
                    child: Text("Ok",style: TextStyle(
                  color: Colors.white
                ),))
              ],
            ),),

          ),
          Positioned(top: 10, child:CircleAvatar(
            backgroundColor: Colors.green[600],
            radius: 50,
            child: Image.network("https://png.pngtree.com/png-clipart/20230512/original/pngtree-isolated-front-view-cat-on-white-background-png-image_9158426.png"),
          ) )
        ],
      ),
    );
  }
}

