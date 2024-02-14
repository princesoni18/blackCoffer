import 'package:blackcoffer_assignment/screens/refineScreen/refine_screen.dart';
import 'package:blackcoffer_assignment/screens/widgets/custom_tile.dart';
import 'package:blackcoffer_assignment/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      backgroundColor: backgroundcolor,
       appBar: AppBar(

        elevation: 0.0,
        title: const FittedBox(
          fit: BoxFit.scaleDown,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[  
              Text("Howdy Prince Soni !!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              const SizedBox(height: 4,),
              Row(children: [Icon(Icons.pin_drop_rounded,size: 14,),Text(" Mandideep,Bhopal",style: TextStyle(fontSize: 12),)],)
          ]),
        ),
        backgroundColor: secondryblue,
        foregroundColor: backgroundcolor,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 4,top: 5),
            child: GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const RefineScreen(),)),
              child:const  Column(children: [Icon(Icons.checklist_rounded),Text("Refine")],)),
          )
        ],

        bottom:  TabBar(
          
            indicatorColor: backgroundcolor,
            indicatorWeight: 4,
            labelColor: backgroundcolor,
            labelStyle: const TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelColor: tertiary,
            tabs: const [Tab(text: "Personal",),
          Tab(text: "Buisness",),Tab(text:"Merchant",)]),
        
   
       ),
       drawer: Drawer(),

       body:  Padding(
         padding: const EdgeInsets.symmetric(horizontal: 12),
         child: Column(
         
          children: [
         const SizedBox(height: 20,),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                                  height:30,
                                  width: MediaQuery.of(context).size.width*(2.4/3),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: Colors.grey)
                                  ),
                                  child: CupertinoSearchTextField(
                                    prefixInsets: const EdgeInsetsDirectional.fromSTEB(16, 3, 0, 3),
                                    prefixIcon: const Icon(CupertinoIcons.search,size: 18,),
                    padding: const EdgeInsets.only(left: 16),
                    backgroundColor: Colors.transparent,
                                  placeholderStyle: TextStyle(fontSize: 14,color: tertiary),
                                  
                                  )),
                  ),
                ),

              Icon(Icons.tune_rounded),




              ],
            ),

          const SizedBox(height: 16,),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CustomTile(),
                );
              },),
            )


            
          ],
         ),
       ),

       floatingActionButton: CircleAvatar(
        backgroundColor: secondryblue,
        radius: 35,
         child: FloatingActionButton(
          backgroundColor: secondryblue,
          foregroundColor: backgroundcolor,
          onPressed: (){},child: Icon(Icons.add),),
       ),

    ));
  }
}