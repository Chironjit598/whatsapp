import 'package:flutter/material.dart';
import 'package:whatsapp/utils/app_colors/app_colors.dart';
import 'package:whatsapp/utils/static_string/static_string.dart';
import 'package:whatsapp/view/screens/chat_pages/chat_pages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {

    super.initState();
    _tabController=TabController(length: 4, vsync: this, initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryClr,
        title: Text(StaticString.appName,
        style: TextStyle(color: AppColors.whiteClr),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.search, color: AppColors.whiteClr,)),
          PopupMenuButton(
              iconColor: AppColors.whiteClr,
              itemBuilder: (context){

            return [
              PopupMenuItem(

                  child: Text("New Group"),
                value: "New Group",

              ),

              PopupMenuItem(

                child: Text("New broadcast"),
                value: "New broadcast",

              ),

              PopupMenuItem(

                child: Text("Whatsapp web"),
                value: "Whatsapp web",

              ),
              PopupMenuItem(

                child: Text("Started message"),
                value: "Started message",

              ),

              PopupMenuItem(

                child: Text("Settings"),
                value: "Settings",

              ),
            ];
          })



        ],
        bottom: TabBar(
          indicatorColor: AppColors.whiteClr,
            controller: _tabController,
            tabs: [
               Tab(
            child: Icon(Icons.camera_alt_outlined, color: AppColors.whiteClr,),
              ),
              Tab(
                child: Text("CHATS",
                style: TextStyle(
                    color: AppColors.whiteClr
                ),
                ),
              ),

              Tab(
                child: Text("STATUS",
                  style: TextStyle(
                      color: AppColors.whiteClr
                  ),
                ),
              ),

              Tab(
                child: Text("CALLS",
                  style: TextStyle(
                      color: AppColors.whiteClr
                  ),
                ),
              ),

            ]),
      ),

      body: TabBarView(
        controller: _tabController,
          children: [
            Text("Camera"),
            ChatPages(),
            Text("STATUS"),
            Text("CALLS"),
          ]),
    );
  }
}
