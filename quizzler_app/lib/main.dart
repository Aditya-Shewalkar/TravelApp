import 'package:flutter/material.dart';
import 'package:WeatherApp/beach.dart';
import 'package:WeatherApp/baga_beach.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool cat_=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SafeArea(
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 15.0,left: 15,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.black26,
                          radius: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Hello, Aditya",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    const Icon(Icons.add_alert_sharp,color: Colors.black,size: 25,),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.0),
                child:  Text('Where do you \nwant to explore today?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: 'Search',
                    hintStyle: const TextStyle(),
                    enabledBorder: OutlineInputBorder(
                      borderSide:const BorderSide(
                          width: 0,color: Colors.black12,),
                      borderRadius: BorderRadius.circular(10),

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 0,color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  cursorColor: Colors.black12,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const <Widget>[
                    Text("Choose Category",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("See all",style: TextStyle(color: Colors.black12,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:<Widget>[
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          cat_=true;
                        });
                      },
                      child: Container(
                        width: 165,
                        decoration: BoxDecoration(
                          border: Border.all(color: cat_?Colors.green.shade200:Colors.black12,width:2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: const [
                            Image(image: AssetImage('images/beach.jpg'),width: 80,height: 70,),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Text('Beach',style: TextStyle(color: Colors.black,fontSize: 15),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          cat_=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color:cat_?Colors.black12:Colors.green.shade200,width:2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: const [
                            Image(image: AssetImage('images/mountain.jpg'),width: 80,height: 70,),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Text('Mountain',style: TextStyle(color: Colors.black,fontSize: 15),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 250,
                  width: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:<Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> const Beach()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            width: 180,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/beach1.png'),fit: BoxFit.cover)),
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black12,
                                      Colors.black87,
                                    ]
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 120,left: 120),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child:Icon(Icons.favorite,color: Colors.red,size: 17,),
                                        radius: 15,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Text('Kuta Beach',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children:const <Widget>[
                                        Icon(Icons.location_on_outlined,color: Colors.white,size: 20,),
                                        Text('Bali, Indonesia',style: TextStyle(color: Colors.white,fontSize: 10),),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0,top: 4),
                                      child: Row(
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const BagaBeach()));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            width: 180,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/beach2.png'),fit: BoxFit.cover)),
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black12,
                                      Colors.black87,
                                    ]
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 120,left: 120),                                    child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child:Icon(Icons.favorite_outline_sharp,color: Colors.black38,size: 17,),
                                        radius: 15,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Text('Baga Beach',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children:const <Widget>[
                                        Icon(Icons.location_on_outlined,color: Colors.white,size: 20,),
                                        Text('Goa, India',style: TextStyle(color: Colors.white,fontSize: 10),),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0,top: 4),
                                      child: Row(
                                        children:const <Widget>[
                                          Icon(Icons.star,color: Colors.amber,size: 15,),
                                          Icon(Icons.star,color: Colors.amber,size: 15,),
                                          Icon(Icons.star,color: Colors.amber,size: 15,),
                                          Icon(Icons.star,color: Colors.amber,size: 15,),
                                          Icon(Icons.star,color: Colors.white,size: 15,),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text('4.8',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      GestureDetector(
                        onTap: (){

                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            width: 180,
                            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/mountains2.jpg'),fit: BoxFit.cover)),
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black12,
                                      Colors.black87,
                                    ]
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 120,left: 120),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child:Icon(Icons.favorite,color: Colors.red,size: 17,),
                                        radius: 15,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 4.0),
                                      child: Text('Ajanta Caves',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Row(
                                      children:const <Widget>[
                                        Icon(Icons.location_on_outlined,color: Colors.white,size: 20,),
                                        Text('Aurangabad, Mah',style: TextStyle(color: Colors.white,fontSize: 10),),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0,top: 4),
                                      child: Row(
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const <Widget>[
                    Text("Popular Package",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                    Text("See all",style: TextStyle(color: Colors.black12,fontSize: 12,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5,left: 18),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 20,bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                            child: const Image(image: AssetImage('images/resort.png'),height:150 ,width: 100,fit: BoxFit.cover,)),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                            const Text('Kuta Resort',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('₹ 20,000',style: TextStyle(fontSize: 15,color: Colors.red),),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children:const <Widget>[
                                Icon(Icons.star,color: Colors.amber,),
                                Icon(Icons.star,color: Colors.amber,),
                                Icon(Icons.star,color: Colors.amber,),
                                Icon(Icons.star,color: Colors.amber,),
                                Icon(Icons.star,color: Colors.black12,),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('4.8',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('A resort is a place used for \nvacation, relaxation or as a day...',style: TextStyle(fontSize: 10,color: Colors.black38,height: 1.5),)
                          ],
                        ),
                        const Icon(Icons.favorite_border_sharp)
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18,right: 5),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 20,bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(image: AssetImage('images/beach2.png'),height:150 ,width: 100,fit: BoxFit.cover,)),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                            const Text('Baga Beach Resort',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text('₹ 20,000',style: TextStyle(fontSize: 15,color: Colors.red),),
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              children:const <Widget>[
                                Icon(Icons.star,color: Colors.amber,),
                                Icon(Icons.star,color: Colors.amber,),
                                Icon(Icons.star,color: Colors.amber,),
                                Icon(Icons.star,color: Colors.amber,),
                                Icon(Icons.star,color: Colors.black12,),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('4.8',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('A resort is a place used for \nvacation, relaxation or as a day...',style: TextStyle(fontSize: 10,color: Colors.black38,height: 1.5),)
                          ],
                        ),
                        const Icon(Icons.favorite_border_sharp)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ReusableCard extends StatefulWidget {
  const ReusableCard({Key? key}) : super(key: key);

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @required late Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const BagaBeach()));
    },
    child: ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: Container(
    width: 180,
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('images/beach2.png'),fit: BoxFit.cover)),
    child: Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.center,
    end: Alignment.bottomCenter,
    colors: [
    Colors.black12,
    Colors.black87,
    ]
    ),
    ),
      child: child,
    )
    )
    )
    );
  }
}
