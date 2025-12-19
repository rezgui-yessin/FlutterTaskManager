


import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:taskmanager/utils/extensions.dart';
import 'package:taskmanager/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors=context.colorScheme;
    final deviceSize=context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child:const  Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,// Added mainAxisAlignment to center the content vertically
                    children: [
                      DisplayWhiteText(text:  'Welcome Back',
                       fontSize: 20,
                       fontWeight: FontWeight.normal,
                       ),
                        // const Gap(10),
                       const DisplayWhiteText(text: 
                       'My todo List',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                       ),
                     

                     
                     
                      
                    ],
                  )
                ),
              ),
              Positioned(child: Column(
                  children: [
                    Container(
                      
                      width: deviceSize.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colors.primaryContainer,

                        ),
                        child :ListView.builder(itemBuilder: (ctx , index)
                        {
                          return Text ('Home')
                        })
                      ),
                    ),
                  ],
                )
              )
                ),
            ],
          ),
        ],
      ),
    );
  }
}