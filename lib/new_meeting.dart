import 'package:agora_api/video_call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:share/share.dart';
import 'package:uuid/uuid.dart';

class NewMeeting extends StatefulWidget {
  const NewMeeting({super.key});

  @override
  State<NewMeeting> createState() => _NewMeetingState();
}

class _NewMeetingState extends State<NewMeeting> {

  String _meetingCode = "abcdfgqw";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var uuid = Uuid();

    _meetingCode = uuid.v1().substring(0, 8);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Column(

          children: [
            Align(

              alignment: Alignment.topLeft,
              child: InkWell(

                child: Icon(Icons.arrow_back),
                onTap: (){
                Navigator.pop(context);
                },
              ),
            ),
            SizedBox(height: 50,),
            Image.network(
              "https://user-images.githubusercontent.com/67534990/127776392-8ef4de2d-2fd8-4b5a-b98b-ea343b19c03e.png",
              fit: BoxFit.cover,
              height: 100,
            ),

            SizedBox(height: 20,),
            Text("Enter meeting code below",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              
            ),
            Padding(padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Card(

              color: Colors.grey[300],
              shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.circular(25),

              ),
              child: ListTile(

                leading: Icon(Icons.link),
                title: SelectableText(_meetingCode),
                trailing: Icon(Icons.copy),
              ),
            ),
            ),
            Divider(thickness: 1, height: 40, indent: 20, endIndent: 20,),
            ElevatedButton.icon(
              onPressed: (){

                Share.share("Meeting Code : $_meetingCode");


              },
              icon: Icon(Icons.arrow_drop_down),
              label: Text("Share Invite",style: TextStyle(color: Colors.white),),

              style: ElevatedButton.styleFrom(


                  primary: Colors.indigo,
                  fixedSize: Size(350, 30),
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(25),
                  )

              ),
            ),
            SizedBox(height: 20,),

            OutlinedButton.icon(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => VideoCall()));


            },

              icon: Icon(Icons.video_call),
              label: Text("Start Call"),
              style: OutlinedButton.styleFrom(

                  primary: Colors.indigo,
                  side: BorderSide(color: Colors.indigo),


                  fixedSize: Size(350, 30),
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
