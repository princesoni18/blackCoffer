import 'package:blackcoffer_assignment/screens/widgets/custom_button.dart';
import 'package:blackcoffer_assignment/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class RefineScreen extends StatefulWidget {
  const RefineScreen({super.key});

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {
  double _value = 20.0;
  List<int> selectedvalues=[];
  String? selectedValue="Available | Hey Let Us Connect";
  final TextEditingController _statusController=TextEditingController(text: "Hi Community! I am open to new connections .");
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(

        backgroundColor: secondryblue,
        title:const Text("Refine",style: TextStyle(fontWeight: FontWeight.w500),),
        foregroundColor: backgroundcolor,



      ),

      body:  Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(height: 20,),
              const Text("Select Your Availability",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 25, 64, 90), ),),
              const SizedBox(height: 8,),
              Container(
                height: 50,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left:10,right: 5 ),
                
                decoration: BoxDecoration(
                 
                  border: Border.all(color: secondryblue,width: 0.5),

                  borderRadius: BorderRadius.circular(10)

                ),
               
                
                  child: DropdownButtonFormField<String>(
                    elevation: 4,
                    iconSize: 15,

                    style: TextStyle(overflow: TextOverflow.ellipsis,color: secondryblue,),
                    decoration:const  InputDecoration(
                      
                      border: InputBorder.none,
                      isDense: true,
                      isCollapsed: true
                    
                    ),
                    value: selectedValue,
                    items: ['Available | Hey Let Us Connect', 'Away | Stay Discrete And Watch', 'Busy | Do not Disturb | Will Catch Up..','SOS | Emergency! Need Assistance!..']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value:  value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 13,fontWeight: FontWeight.normal),
                          overflow: TextOverflow.ellipsis,
                          
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                  ),
                ),
              
          
                const SizedBox(height: 12,),
                const Text("Add Your Status",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 25, 64, 90), ),),
                const SizedBox(height: 8,),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                   
                   border: Border.all(color: secondryblue,width: 0.5),
                   borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
             
                child:TextField(
                  controller: _statusController,
                  maxLength: 250,
                  maxLines: 8,
                  minLines: 2,
                  style: TextStyle(color: secondryblue,fontSize: 14),

                  decoration: InputDecoration(

                    border: InputBorder.none
                  ),
                ),),
                 
          
                const SizedBox(height: 30,),
                const Text("Select Hyper local Distance",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 25, 64, 90), ),),
                const SizedBox(height: 30,),
                Slider(
                
                activeColor: secondryblue,
                value: _value,
                onChanged: (newValue) {
                  setState(() {
                  _value=newValue;
                  });
                },
                
                min: 1.0,
                max: 100.0,
                divisions: 100, 
                label: '${_value.toInt()} km',
              ),
          
          
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("1 Km"),Text("100 Km")],),
          ),
          const SizedBox(height: 20,),
          const Text("Select Purpose",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromARGB(255, 25, 64, 90), ),),
          const SizedBox(height: 15,),
                 buttons(),
                 const SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: CustomButton(text: "Save & Explore",filled: true,size: 15,)),
                const SizedBox(height: 30,)
          
          
            ],
          ),
        ),
      ),
    );


    
  }
  Widget buttons(){

    return 
      
         Wrap(
            runSpacing: 15,
            spacing: 10,
            children: [
          
              CustomButton(text: "Coffee",filled:selectedvalues.contains(0)? true:false,func: () {
                if(selectedvalues.contains(0)){
                  selectedvalues.remove(0);
                }
               else  selectedvalues.add(0);
                setState(() {
                  
                });
              },),
              
              CustomButton(text: "Buisness",filled:selectedvalues.contains(1)? true:false,func: () {
                if(selectedvalues.contains(1)){
                  selectedvalues.remove(1);
                }
               else  selectedvalues.add(1);
                setState(() {
                  
                });
              },),
            
              CustomButton(text: "Hobby",filled:selectedvalues.contains(2)? true:false,func: () {
                if(selectedvalues.contains(2)){
                  selectedvalues.remove(2);
                }
               else  selectedvalues.add(2);
                setState(() {
                  
                });
              },),
           
              CustomButton(text: "Friendship",filled:selectedvalues.contains(3)? true:false,func: () {
                if(selectedvalues.contains(3)){
                  selectedvalues.remove(3);
                }
               else  selectedvalues.add(3);
                setState(() {
                  
                });
              },),
             

              CustomButton(text: "Movies",filled:selectedvalues.contains(4)? true:false,func: () {
                if(selectedvalues.contains(4)){
                  selectedvalues.remove(4);
                }
               else  selectedvalues.add(4);
                setState(() {
                  
                });
              },),
              
              CustomButton(text: "Dinning",filled:selectedvalues.contains(5)? true:false,func: () {
                if(selectedvalues.contains(5)){
                  selectedvalues.remove(5);
                }
               else  selectedvalues.add(5);
                setState(() {
                  
                });
              },),
             

              CustomButton(text: "Dating",filled:selectedvalues.contains(6)? true:false,func: () {
               if(selectedvalues.contains(6)){
                  selectedvalues.remove(6);
                }
               else  selectedvalues.add(6);
                setState(() {
                  
                });
              },),
            
              CustomButton(text: "Matrimony",filled:selectedvalues.contains(7)? true:false,func: () {
               if(selectedvalues.contains(7)){
                  selectedvalues.remove(7);
                }
               else  selectedvalues.add(7);
                setState(() {
                  
                });
              },),
             
            ],
          
        );
      
    
  }
}

