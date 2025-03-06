import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/ui_helper.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  var arrContent=[
    {
      "images":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"5"
    },
    {
      "images":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"5"
    },
    {
      "images":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"5"
    },
    {
      "images":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"5"
    },
    {
      "images":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"5"
    },
    {
      "images":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"5"
    },
    {
      "images":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"5"
    },
    {
      "images":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"10"
    },
    {
      "images":"https://t3.ftcdn.net/jpg/01/42/01/84/360_F_142018449_yR0avsaJqbIx8NA47sINMoaxdtn1sPzh.jpg",
      "name":"vikas kumar",
      "lastmsg":"How are you",
      "time":"05:30 am",
      "msg":"5"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined,color: Colors.black,),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_sharp,color: Colors.black,),
          ),

          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert,color: Colors.black,)),
        ],
      ),
      
      
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading: CircleAvatar(radius: 50,
          backgroundImage:NetworkImage(arrContent[index]["images"].toString()),
          ),
          title: UiHelper.CustomText(text: arrContent[index]["name"].toString(), height: 14),
          subtitle: UiHelper.CustomText(text: arrContent[index]["lastmsg"].toString(), height: 10,color: Color(0xff889095)),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomText(text: arrContent[index]["time"].toString(), height: 12,),
              CircleAvatar(
                radius: 10,
                child: UiHelper.CustomText(text: arrContent[index]["msg"].toString(), height: 10,color: Color(
                    0xffffffff)),
              )
            ],
          ),

        );
      },
      itemCount: arrContent.length,),

      floatingActionButton: FloatingActionButton(onPressed: (){
      },
        child: Icon(Icons.mark_unread_chat_alt_rounded,color: Color(0xffffffff),),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
