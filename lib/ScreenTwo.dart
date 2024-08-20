import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     drawer: Drawer(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.only(
           topRight: Radius.circular(0)
         )
       ),
       child: ListView(
         children: [
           DrawerHeader(
             padding: EdgeInsets.zero,
             // margin: EdgeInsets.zero,
             child: Column(
               children: [
                 ClipOval(
                   child: Image.asset('assets/nayeem.png',
                     height: 120,
                     errorBuilder: (_,__,___){
                      return Icon(Icons.image, size: 50);
                     },
                     ),
                 ),
                 Text('Nizam Uddin Nayeem'),
                 Text('nunayeem@gmail.com',
                   style: TextStyle(fontSize: 10),
                 ),
               ],

             ),
           ),
           Column(
             children: [
               ListTile(
                 leading: Icon(Icons.home),
                 title: Text('Home'),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
               ListTile(
                 leading: Icon(Icons.inbox),
                 title: Text('Inbox'),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
               ListTile(
                 leading: Icon(Icons.drafts),
                 title: Text('Draft'),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),
               ListTile(
                 leading: Icon(Icons.share),
                 title: Text('Share'),
                 trailing: Icon(Icons.arrow_forward_ios),
               ),


             ],
           )
         ],
       ),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(
             height: 80,
             width: double.infinity,
             child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.green,
                 foregroundColor: Colors.white
               ),
                 onPressed: (){
                   Fluttertoast.showToast(
                     msg: 'Hello Button',
                     toastLength: Toast.LENGTH_LONG
                   );
                 },
                 child: Text('Hello'),
             ),
           )
         ],
       ),
     ),
    );
  }
}
