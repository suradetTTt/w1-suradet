import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              padding: EdgeInsets.all(25),
              //padding: EdgeInsets.symmetric(),
              //padding: EdgeInsets.horizontal(),
              //padding: EdgeInsets.vertical(),
              //padding: EdgeInsets.only(top: ,bottom: ,),
              decoration: BoxDecoration(color: Colors.blue[300]),

              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),

                    child: ClipOval(
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ52t9wI5SZRrciRCx8buZw58EXFkb6ri-lg&s",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Suradet Damrongpanjawong"),
                  Text("Suradet.damrongpanjawong@e-tech.ac.th"),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("บ้อมูลส่วนตัว"),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text("เบอร์โทรศัพ"),
                          SizedBox(height: 5),
                          Text("111-111-1111"),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text("เบอร์โทรศัพ"),
                          SizedBox(height: 5),
                          Text("111-111-1111"),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text("เบอร์โทรศัพ"),
                          SizedBox(height: 5),
                          Text("111-111-1111"),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.lightGreenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Text("เบอร์โทรศัพ"),
                          SizedBox(height: 5),
                          Text("111-111-1111"),
                        ],
                      ),
                    ],
                  ),

                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    child: Text('หน้าสอง'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    child: ClipOval(
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ52t9wI5SZRrciRCx8buZw58EXFkb6ri-lg&s",
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(children: [Text('5'), Text('กำลังติดตาม')]),
                  SizedBox(width: 10),
                  Container(width: 2, height: 50, color: Colors.grey[400]),
                  SizedBox(width: 10),
                  Column(children: [Text('828.1 k'), Text('ผู้ติดตาม')]),
                  SizedBox(width: 10),
                  Container(width: 2, height: 50, color: Colors.grey[400]),
                  SizedBox(width: 10),
                  Column(children: [Text('329.9 k'), Text('ถูกใจและบันทึก')]),
                ],
              ),
            ),

            SizedBox(height: 30),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text('Suradet_damrongpanjawong'),
                      SizedBox(width: 30),
                      Container(child: Icon(Icons.check_circle)),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    children: [
                      SizedBox(width: 30),
                      Container(child: Icon(Icons.tiktok)),
                      SizedBox(width: 5),
                      Text('Suradet_damrongpanjawong'),
                      SizedBox(width: 5),
                      Container(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),

                  SizedBox(height: 40),

                  Row(
                    children: [
                      SizedBox(width: 40),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent[400],
                          borderRadius: BorderRadius.circular(10),
                        ),

                        width: 250,
                        height: 50,
                        child: Center(child: Text('ติดตาม')),
                      ),

                      SizedBox(width: 40),
                      Container(child: Icon(Icons.share)),
                    ],
                  ),

                  SizedBox(height: 30,),

                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfjVfIKWXU3eIIG5hbZx-LizJHKRKN99fDDA&s",
                        width: 190,
                        height: 250,
                        fit: BoxFit.cover,
                      ),

                      SizedBox(width: 10,),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfjVfIKWXU3eIIG5hbZx-LizJHKRKN99fDDA&s",
                        width: 190,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
