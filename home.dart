import 'package:flutter/material.dart';

class home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Center(child:Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top:20.0,left: 10.0),
      color: Colors.limeAccent,
      child: Column(children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: Text("Margherita",
            style: TextStyle(

              fontSize: 30.0,
              decoration: TextDecoration.none,
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.w700,
            ),
            textDirection: TextDirection.ltr,)),
          Expanded(child: Text("Tomato,Mozzarella,Basil",
            style: TextStyle(
              fontSize: 20.0,
              decoration: TextDecoration.none,
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.w400,
            ),
            textDirection: TextDirection.ltr,)),

        ],),
        Row(children: <Widget>[
          Expanded(child: Text("Peppy Paneer",
            style: TextStyle(
              fontSize: 30.0,
              decoration: TextDecoration.none,
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.w700,
            ),
            textDirection: TextDirection.ltr,)),
          Expanded(child: Text("Tomato,Pepper,Cheese",
            style: TextStyle(
              fontSize: 20.0,
              decoration: TextDecoration.none,
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.w400,
            ),
            textDirection: TextDirection.ltr,)),
        ],),
        PizzaImageWidget(),
        OrderButton(),
      ],)

    ));
  }

}

class PizzaImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('images/pizza2.png');
    Image image = Image(image: pizzaAsset, width: 200.0, height: 400.0,);
    return Container(child: image);
  }

}

class OrderButton extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top:30.0),
      child: RaisedButton(
        child: Text("Order your Pizza!!"),
        color: Colors.green,
        elevation: 5.0,
        onPressed: (){
          order(context);

        },
      ),
    );
    return button;
  }

  void order(BuildContext context)
  {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thank you for your order"),

    );
    showDialog(
      context: context,
      builder: (BuildContext context) => alert);
  }
}

