import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  List<dragableIcon> dragableiconList = [
    dragableIcon(icon: Icon(Icons.star), color: Colors.orange),
    dragableIcon(icon: Icon(Icons.star), color: Colors.red),
    dragableIcon(icon: Icon(Icons.star), color: Colors.purple),
    dragableIcon(icon: Icon(Icons.star), color: Colors.blue),
    dragableIcon(icon: Icon(Icons.star), color: Colors.green),
    dragableIcon(icon: Icon(Icons.perm_device_info), color: Colors.pink),
    dragableIcon(
        icon: Icon(Icons.next_week_outlined), color: Colors.purpleAccent),
    dragableIcon(icon: Icon(Icons.done), color: Colors.green),
    dragableIcon(icon: Icon(Icons.info), color: Colors.blue),
    dragableIcon(icon: Icon(Icons.info), color: Colors.green),
  ];
  List<dragableIcon> dragableiconList1=[];


  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  String selectedValue = "Language1";
  String _chosenValue = "";
  List listitem = [
    "language 1",
    "Language 2",
    "Language 3",
    "Language 4",
    "Language 5",
  ];
  List<String> signatureList=[];

  String _selectedValue = 'Option 1';
  final List<DropdownMenuItem<String>> _dropdownItems1 = [
    DropdownMenuItem<String>(
      value: 'Option 1',
      child: Text('English(UK)'),
    ),
    const DropdownMenuItem<String>(
      value: 'Option 2',
      enabled: true,
      child: Text('Bahasa Indonesia'),
    ),
    const DropdownMenuItem<String>(
      value: 'Option 3',
      enabled: true,
      child: Text('Bahasa melayu'),
    ),
    const DropdownMenuItem<String>(
      value: 'Option 4',
      enabled: true,
      child: Text('English(UK)'),
    ),
    const DropdownMenuItem<String>(
      value: 'Option 5',
      enabled: true,
      child: Text('English(US)'),
    ),
    const DropdownMenuItem<String>(
      value: 'Option 6',
      child: Text('Hindi(India)'),
    ),
  ];

  List<DropdownMenuItem<String>> _dropdownItems2 = [
    DropdownMenuItem<String>(
      value: 'Option 1',
      enabled: true,
      child: Text('India'),
    ),
    DropdownMenuItem<String>(
      value: 'Option 2',
      enabled: true,
      child: Text('Nepal'),
    ),
    DropdownMenuItem<String>(
      value: 'Option 3',
      enabled: true,
      child: Text('China'),
    ),
  ];
  List<DropdownMenuItem<String>> _dropdownItems5 = [
    DropdownMenuItem<String>(
      value: 'Option 1',
      enabled: true,
      child: Text('Sans sarif'),
    ),
    DropdownMenuItem<String>(
      value: 'Option 2',
      enabled: true,
      child: Text('Times New Roman'),
    ),
    DropdownMenuItem<String>(
      value: 'Option 3',
      enabled: true,
      child: Text('Lora Medium'),
    ),
  ];

  List<DropdownMenuItem<String>> _dropdownItems3 = [
    DropdownMenuItem<String>(
      value: 'Option 1',
      enabled: true,
      child: Icon(Icons.text_decrease),
    ),
    DropdownMenuItem<String>(
      value: 'Option 2',
      enabled: true,
      child: Icon(Icons.text_fields),
    ),
    DropdownMenuItem<String>(
      value: 'Option 3',
      enabled: true,
      child: Icon(Icons.text_fields_sharp),
    ),
  ];

  List<DropdownMenuItem<String>> _dropdownItems4 = [
    DropdownMenuItem<String>(
      value: 'Option 1',
      enabled: true,
      child: Icon(Icons.sort_by_alpha_outlined),
    ),
    DropdownMenuItem<String>(
      value: 'Option 2',
      enabled: true,
      child: Icon(Icons.sort_by_alpha),
    ),
    DropdownMenuItem<String>(
      value: 'Option 3',
      enabled: true,
      child: Icon(Icons.text_format_outlined),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    String _selectedValue = 'Option 1';
    List<String> _dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.only(
            left: 0.03 * screenWidth,
            right: 0.05 * screenWidth,
            top: 0.01 * screenHeight),
        child: ListView(
          scrollDirection: Axis.vertical,
          //mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child:Text("Settings",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25),)
            ),
            Container(
              width: double.infinity,
              height:2,
                margin: EdgeInsets.only(top:5),
                color:Colors.black26,
            ),
            Container(
              width: double.infinity,
              height:20,

            ),

            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: const Text("Language:"),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: 0.75 * screenWidth,
                    // margin: EdgeInsets.only(left:0.05*screenWidth),

                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        const Text("Gmail display language:"),
                        Container(
                          width: isTablet()
                              ? 0.35 * screenWidth
                              : 0.48 * screenWidth,
                          child: DropdownButtonFormField(
                            dropdownColor: Colors.grey[100],
                            value: _selectedValue,
                            items: _dropdownItems1,
                            focusColor: Colors.white,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value!;
                              });
                            },
                            icon: Icon(Icons.keyboard_arrow_down),
                            itemHeight: 50,
                            decoration: const InputDecoration(
                              hintText: 'Select an option',
                              contentPadding: EdgeInsets.only(
                                left: 8,
                              ),
                              border: OutlineInputBorder(gapPadding: 0),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Choose language settings for other Google products.",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Show all language options",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              width: double.infinity,
              child: Container(
                height: 2,
                width: 0.80 * screenWidth,
                color: Colors.black12,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(flex: 1, child: Text("Phone Numbers:")),
                Expanded(
                  flex: 5,
                  child: Container(
                    // margin: EdgeInsets.only(left:0.05*screenWidth),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text("Default country code: "),
                        Container(
                          width: isTablet()
                              ? 0.35 * screenWidth
                              : 0.48 * screenWidth,
                          child: DropdownButtonFormField(
                            dropdownColor: Colors.grey[100],
                            value: _selectedValue,
                            items: _dropdownItems2,
                            focusColor: Colors.white,
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value!;
                              });
                            },
                            icon: Icon(Icons.keyboard_arrow_down),
                            itemHeight: 50,
                            decoration: const InputDecoration(
                              hintText: 'India',
                              contentPadding: EdgeInsets.only(
                                left: 8,
                              ),
                              border: OutlineInputBorder(gapPadding: 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                height: 2,
                width: 0.80 * screenWidth,
                color: Colors.black12,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.red,
                    width: 0.150 * screenWidth,
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Container(
                          width: 0.10 * screenWidth,
                          child: Text(
                            "Default textStyle: ",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                            width: 0.10 * screenWidth,
                            child: Text(
                                "(Use the 'Remove formatting' button on the toolbar to reset the default text style)")),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 0.20 * screenHeight,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 0.50 * screenWidth,
                              child: Card(
                                elevation: 4,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: Column(children: [
                                  Row(children: [
                                    DropdownButton<String>(
                                      value: _selectedValue,
                                      items: _dropdownItems5,
                                      dropdownColor: Color(0xffffffff),
                                      focusColor: Colors.transparent,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedValue = value!;
                                        });
                                      },
                                      padding: EdgeInsets.only(left: 6),
                                      underline: Container(
                                        padding: EdgeInsets.only(left: 4),
                                      ),
                                    ),
                                    DropdownButton<String>(
                                      value: _selectedValue,
                                      items: _dropdownItems3,
                                      dropdownColor: Color(0xffffffff),
                                      focusColor: Colors.transparent,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedValue = value!;
                                        });
                                      },
                                      padding: EdgeInsets.only(left: 6),
                                      underline: Container(
                                        padding: EdgeInsets.only(left: 4),
                                      ),
                                    ),
                                    DropdownButton<String>(
                                      value: _selectedValue,
                                      items: _dropdownItems4,
                                      dropdownColor: Color(0xffffffff),
                                      focusColor: Colors.transparent,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedValue = value!;
                                        });
                                      },
                                      padding: EdgeInsets.only(left: 6),
                                      underline: Container(
                                        padding: EdgeInsets.only(left: 4),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.format_strikethrough)),
                                  ]),
                                  SizedBox(height: 10),
                                  Container(
                                      padding: EdgeInsets.only(left: 8),
                                      width: double.infinity,
                                      child: Text(
                                          "This is what your body text will look like."))
                                ]),
                              ),
                            ),
                            SizedBox(
                              width: 0.20 * screenWidth,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              child: Container(
                height: 2,
                width: 0.80 * screenWidth,
                color: Colors.black12,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: const Text("Stars:"),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: 0.75 * screenWidth,
                    // margin: EdgeInsets.only(left:0.05*screenWidth),

                    child: Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Wrap(
                          direction: Axis.horizontal,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Drag the Stars between the lists.",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                    "This stars will rotate in the order shown below successefely.To learn the name of the star for search hover the mouse over the image")),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Presents: "),
                            Text(
                              "1 stars.",
                              style: TextStyle(color: Colors.blue),
                            ),
                            Text(
                              "  2 stars.  ",
                              style: TextStyle(color: Colors.blue),
                            ),
                            Text(
                              "1 stars.",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              height: 0.018*screenWidth,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(width: 80, child: Text("In use: ")),

                                Stack(
                                  children: [

                                    Container(
                                      width: 0.6 * screenWidth,
                                      height: 30,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: dragableiconList1.length,
                                        itemBuilder: (context, index) {
                                          dragableIcon dragableIcons=dragableiconList1[index];
                                          return  Container(
                                            width: 40,
                                            height: 0.05 * screenHeight,
                                            margin:EdgeInsets.only(left:5),


                                            child: Draggable<String>(
                                              data: '$index',
                                              feedback: Container(
                                                width: 20,
                                                height:20,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: dragableIcons.color,
                                                ),

                                                child: Center(child: dragableIcons.icon),
                                              ),
                                              child: Container(


                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(20),
                                                  color: dragableIcons.color.withOpacity(0.5),
                                                ),
                                                child: Container(

                                                    width: 20,
                                                    height:20,
                                                    child: dragableIcons.icon),
                                              ),
                                            ),
                                          );

                                        },
                                      ),

                                    ),
                                    Container(
                                      width: 0.6 * screenWidth,
                                      height: 0.05 * screenHeight,
                                      child: DragTarget<String>(
                                        onAccept: (data) {
                                          // Handle the dropped element here
                                          print('$data');
                                          int index=int.parse(data);
                                          dragableiconList1.add(dragableiconList[index]);
                                          dragableiconList.removeAt(index);
                                          setState(() {

                                          });

                                        },
                                        builder:
                                            (context, candidateData, rejectedData) {
                                          return SizedBox(
                                            width: 0.6 * screenWidth,
                                            height: 0.05 * screenHeight,


                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                            SizedBox(
                              height: 0.0106*screenWidth,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    width: 80,
                                    height: 30,
                                    child: Text("Not In use: "),),
                                Stack(
                                  children: [

                                    Container(
                                      width: 0.6 * screenWidth,
                                      height: 30,
                                      child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: dragableiconList.length,
                                      itemBuilder: (context, index) {
                                        dragableIcon dragableIcons=dragableiconList[index];
                                        return  Container(
                                            width: 40,
                                            height: 0.05 * screenHeight,
                                            margin:EdgeInsets.only(left:5),

                                            child: Draggable<String>(
                                              data: '$index',
                                              feedback: Container(
                                                height: 0.05 * screenHeight,

                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: dragableIcons.color.withOpacity(0.5),
                                                ),
                                                child: Center(child: dragableIcons.icon),
                                              ),
                                              child: Container(

                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: dragableIcons.color.withOpacity(0.5),
                                                ),
                                                child: SizedBox(
                                                    width: 20,
                                                    height:20,
                                                    child: dragableIcons.icon),
                                              ),
                                            ),
                                          );

                                      },
                                      ),
                                    ),
                                    Container(
                                      width: 0.6 * screenWidth,
                                      height: 30,
                                      child: DragTarget<String>(
                                        onAccept: (data) {
                                          // Handle the dropped element here
                                          print('$data');
                                          int index=int.parse(data);
                                          dragableiconList.add(dragableiconList1[index]);
                                          dragableiconList1.removeAt(index);


                                          setState(() {

                                          });

                                        },
                                        onLeave: (data){

                                        },
                                        builder:
                                            (context, candidateData, rejectedData) {

                                          return Container(
                                            width: 0.6 * screenWidth,
                                            height: 0.05 * screenHeight,
                                           // color: Colors.red,

                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(height:15),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    // color: Colors.red,
                    width: 0.150 * screenWidth,
                    child: Wrap(
                      direction: Axis.vertical,

                      children: [
                        Container(
                          width: 0.10 * screenWidth,
                          child: Text(
                            "Signature: ",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                            width: 0.10 * screenWidth,
                            child: Text(
                                "(appended at the end of all outgoing messages)")),
                        Container(
                          width: 0.10 * screenWidth,
                          padding:EdgeInsets.only(right:10),


                          child: Align(
                            alignment: Alignment.topLeft,
                            child: TextButton(
                              onPressed: () {  }, child:Text( "Learn More"),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      signatureValue?Text("No signatures",style: TextStyle(fontWeight: FontWeight.bold),):
                      Card(
                        child: Container(
                          // width: 40*screenWidth,
                          color:Colors.white24,

                          child: Row(
                            children: [
                              Expanded(
                                flex:1,
                                child:Container(
                                  height: 200,
                                    color:Colors.white24,
                                  child:ListView.builder(
                                    // scrollDirection: Axis.horizontal,
                                    itemCount: signatureList.length,
                                    itemBuilder:
                                      (context, index) {
                                    return Container(
                                      padding: EdgeInsets.only(left:10),
                                      color:Color(0xfffE8F0FE),

                                      child:   Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(name),
                                              Spacer(),
                                              IconButton(onPressed: (){



                                              }, icon: Icon(Icons.edit)),
                                              IconButton(onPressed: (){
                                                setState(() {
                                                  signatureList.removeAt(index);
                                                  signatureValue=true;
                                                });

                                              }, icon: Icon(Icons.delete)),

                                            ],
                                          ),
                                          Container(
                                            height: 2,
                                            width: 0.35*screenWidth,
                                            color: Colors.white,
                                          )

                                        ],
                                      ),
                                    );
                                  },
                                  )

                                ),

                              ),
                              Expanded(
                              flex: 3,
                                child:Container(

                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Container(
                                        height: 2,
                                        width:0.6*screenWidth,

                                      ),
                                      Container(
                                          color:Colors.white,
                                          height:170,
                                          padding:EdgeInsets.only(left:10,right:5),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: InputBorder.none, // Remove the underline here

                                            ),

                                          )
                                      ),
                                      // Todo:
                                      Container(
                                          height:30,
                                          color:Colors.white,
                                          child:  Row(children: [
                                            DropdownButton<String>(
                                              value: _selectedValue,
                                              items: _dropdownItems5,
                                              dropdownColor: Color(0xffffffff),
                                              focusColor: Colors.transparent,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedValue = value!;
                                                });
                                              },
                                              padding: EdgeInsets.only(left: 6),
                                              underline: Container(
                                                padding: EdgeInsets.only(left: 4),
                                              ),
                                            ),
                                            SizedBox(width:15),
                                            DropdownButton<String>(
                                              value: _selectedValue,
                                              items: _dropdownItems3,
                                              dropdownColor: Color(0xffffffff),
                                              focusColor: Colors.transparent,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedValue = value!;
                                                });
                                              },
                                              padding: EdgeInsets.only(left: 6),
                                              underline: Container(
                                                padding: EdgeInsets.only(left: 4),
                                              ),
                                            ),
                                            SizedBox(width:10),
                                            DropdownButton<String>(
                                              value: _selectedValue,
                                              items: _dropdownItems4,
                                              dropdownColor: Color(0xffffffff),
                                              focusColor: Colors.transparent,
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedValue = value!;
                                                });
                                              },
                                              padding: EdgeInsets.only(left: 6),
                                              underline: Container(
                                                padding: EdgeInsets.only(left: 4),
                                              ),
                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.format_strikethrough)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.link)),
                                          ]),

                                      ),
                                    ]
                                  ),
                                )


                              )
                            ],

                          ),
                        ),
                      ),
                      SizedBox(height: 15,),

                     /*  Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width:20*screenWidth,
                                child: Row(
                                  children: [
                                    Text(name),
                                    Spacer(),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                                    IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                                  ],
                                ),
                              )


                            ],
                          ),
                          Column(
                            children: [

                            ],
                          )
                        ],

                      ),
                     */
                      TextButton(
                        onPressed: () {
                          _showNameInputDialog(context);
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
                            ),
                          ),
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: Colors.blue, // Outline color
                              width: 2.0, // Outline width
                            ),
                          ),
                        ),
                        child: Text(
                          '+ Create new',
                          style: TextStyle(
                            color: Colors.blue,

                          ),
                        ),
                      ),


                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  isTablet() {
    bool isTablets = MediaQuery.of(context).size.width >= 600;
    return isTablets;
  }
  bool signatureValue=true;

  String name = '';

  Future<void> _showNameInputDialog(BuildContext context) async {
     name="";
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Name new Signature'),
          content: TextField(
            onChanged: (value) {
              name = value;
            },
            decoration: InputDecoration(labelText: 'Name'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {

                Navigator.of(context).pop();
                setState(() {
                  signatureValue=true;
                });
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Do something with the entered name, e.g., display it
                print('Entered Name: $name');




                setState(() {
                  if(name.isNotEmpty){
                    print("$name");
                    signatureValue = false;
                    Navigator.of(context).pop();
                    signatureList.add(name);
                  }

                });


              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue), // Button background color
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Button border radius
                  ),
                ),
              ),

              child: Text('Create',style: TextStyle(color: Colors.white),),
            ),
          ],
        );
      },
    );
  }



}

