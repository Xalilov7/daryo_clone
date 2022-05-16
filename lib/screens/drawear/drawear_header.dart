
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrwaerHeader extends StatefulWidget {
  const MyDrwaerHeader({Key? key}) : super(key: key);

  @override
  _MyDrwaerHeaderState createState() => _MyDrwaerHeaderState();
}

class _MyDrwaerHeaderState extends State<MyDrwaerHeader> {
  @override
  Widget build(BuildContext context) {
    return  DrawerHeader(child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const  Text('Daryo', style: TextStyle(color: Colors.white, fontSize: 24),),
           const  SizedBox(width: 24,),
            selectLang()
          ],

        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Toshkent", style: TextStyle(color: Colors.white, fontSize: 16)),
            Row(
              children: [
                Icon(Icons.cloud_queue_sharp, color: Colors.white),
                SizedBox(width: 4),
                Text("+12.0", style: TextStyle(color: Colors.white))
              ],
            ),
          ],
        ),
        const  Divider(thickness: 1.0, color: Colors.white),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        currencyRate(Icons.monetization_on_outlined, "11600"),
        currencyRate(Icons.euro_symbol, "11600"),
        currencyRate(Icons.euro, "11600"),
      ],)
      ],
    ),
      decoration: BoxDecoration(color: Colors.blue) ,

    );
  }

  List<bool> _isSelected = [false, true];

  Widget selectLang() {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30)
      ),
      width: 180,
      height: 30,
      child: ToggleButtons( borderColor: Colors.transparent , selectedBorderColor: Colors.transparent , children: [
        Container(width: 90, height: 30,
            child: Text("UZB", style: TextStyle(color: _isSelected[0] ? Colors.blue : Colors.white) ),
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius:  const BorderRadius.only(topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)), color: _isSelected[0] ? Colors.white : Colors.blue)),
        Container(width: 90, height: 30, child: Text("ENG", style: TextStyle(color: _isSelected[1] ? Colors.blue : Colors.white) ),
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius:  const BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)), color: _isSelected[1] ? Colors.white : Colors.blue)) ,
      ], isSelected: _isSelected,

      onPressed: (index) {
        setState(() {
          if(index == 0){
            _isSelected[0] = true;
            _isSelected[1] = false;
          } else{
            _isSelected[1] = true;
            _isSelected[0] = false;
          }
        });
      },
      ),
    ),
  );
  }
  Widget currencyRate(IconData icon, String rate) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        Text(rate, style: TextStyle(color: Colors.white),)
      ],
    );
  }
}
