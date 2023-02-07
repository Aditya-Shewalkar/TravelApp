import 'package:flutter/material.dart';

class BagaBeach extends StatefulWidget {
  const BagaBeach({Key? key}) : super(key: key);

  @override
  State<BagaBeach> createState() => _BagaBeachState();
}

class _BagaBeachState extends State<BagaBeach> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/beach2.png')
          )
      ),
      child: SafeArea(
        child: Container(
          decoration:const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black12,
                  Colors.black,
                ]
            ),
          ),
          child: Scaffold(
            backgroundColor: const Color(0x00000000),
            body:Padding(
              padding: const EdgeInsets.symmetric(horizontal:20 ,vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    children:const <Widget>[
                      Text('Baga Beach',style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                      Expanded(child: SizedBox(width: 50,)),
                      Icon(Icons.location_on_outlined,color: Colors.white70,size: 18,),
                      Text('Goa, India',style: TextStyle(color: Colors.white70,fontSize: 13),)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('One of the most happening beaches in Goa , Bagga beach is where you'
                      'will find water sports, fine dine restaurants, bars, and clubs. Situated'
                      'in North Goa, BagaBeach is bordered by Calangute and and Anjuna '
                      'Beaches',style: TextStyle(color: Colors.white,fontSize: 10,height: 1.6),),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children:const <Widget>[
                      Icon(Icons.star,color: Colors.amber,size: 15,),
                      Icon(Icons.star,color: Colors.amber,size: 15,),
                      Icon(Icons.star,color: Colors.amber,size: 15,),
                      Icon(Icons.star,color: Colors.amber,size: 15,),
                      Icon(Icons.star,color: Colors.white,size: 15,),
                      SizedBox(
                        width: 8,
                      ),
                      Text('4.2',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children:<Widget>[
                      const Text('₹ 15,000/person',style: TextStyle(color: Colors.white),),
                      const Expanded(child: SizedBox(width: 25,)),
                      ElevatedButton(
                        onPressed: (){

                        },
                        child:const Text('Book Now',style: TextStyle(color: Colors.black),),
                        style:ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fixedSize: const Size(120, 55),
                          backgroundColor: Colors.yellow,
                        ),
                        /*ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.yellow),
                        ),*/
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
