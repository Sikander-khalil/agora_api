import 'package:agora_api/video_call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JoinWithCode extends StatefulWidget {
  const JoinWithCode({super.key});

  @override
  State<JoinWithCode> createState() => _JoinWithCodeState();
}

class _JoinWithCodeState extends State<JoinWithCode> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [

            Align(
              alignment: Alignment.topLeft,
              child: InkWell(child: Icon(Icons.arrow_back),

              onTap: (){

              Navigator.pop(context);


              },
              ),
            ),
            SizedBox(height: 50,),
            Image.network(
              "https://user-images.githubusercontent.com/67534990/127776450-6c7a9470-d4e2-4780-ab10-143f5f86a26e.png",
              fit: BoxFit.cover,
              height: 100,
            ),
            SizedBox(height: 20,),
            Text("Enter meeding code below",

              style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold
              ),


            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15,20, 15, 20),
              child: Card(

                color: Colors.grey[300],

                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(15),


                ),
                child: TextField(

                  controller: _controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(

                    border: InputBorder.none,
                    hintText: 'Enter your code',

                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => VideoCall()));
                


              },

              child: Text("Join",style: TextStyle(color: Colors.white),),

              style: ElevatedButton.styleFrom(


                  primary: Colors.indigo,
                  fixedSize: Size(50, 30),
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(25),
                  )

              ),
            ),

          ],
        ),
      ),
    );
  }
}
