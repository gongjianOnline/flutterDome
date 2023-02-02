import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title:const Text("布局组件")),
      body: MyApp(),
    )
  ));
}


// Flex Expanded组件实例
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: IconContainer(Icons.ac_unit_outlined,Colors.blueAccent)
        ),
        Expanded(
          flex:2,
          child:IconContainer(Icons.access_alarms,Colors.red),
        )
      ],
    );
  }
}

// // Row组件实例
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       color:Colors.black12,
//       padding: const EdgeInsets.all(20),
//       child:Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           IconContainer(Icons.ac_unit_outlined,Colors.blueAccent),
//           IconContainer(Icons.access_alarms,Colors.red),
//           IconContainer(Icons.account_balance_wallet_rounded,Colors.amber)
//         ],
//       )
//     );
//   }
// }

class IconContainer extends StatelessWidget {
  IconData iconValue;
  Color colorValue;
  IconContainer(this.iconValue,this.colorValue,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color:colorValue,
      child: Icon(iconValue),
    );
  }
}


