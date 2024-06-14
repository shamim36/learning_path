import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class DashBord extends StatefulWidget {
  const DashBord({super.key});

  @override
  State<DashBord> createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 31, 31),
        // leading: Image.asset("assets/logo.png"),
        title: Container(
          child: Image.asset("assets/logo.png"),
          height: 130,
          width: 250,
        ),
        toolbarHeight: 200,
        centerTitle: false,
        actions: [
          InkWell(
            onTap: () {
              toastification.show(
                context: context, // optional if you use ToastificationWrapper
                type: ToastificationType.warning,
                title: Text('Not Available!!',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                autoCloseDuration: const Duration(seconds: 5),
                description: RichText(
                  text: const TextSpan(
                      text:
                          'Sorry For inconvinience . No course are available at this moment.'),
                ),
                alignment: Alignment.bottomRight,
                direction: TextDirection.ltr,
                animationDuration: const Duration(milliseconds: 300),

                icon: const Icon(Icons.check),
                primaryColor: Colors.green,
                backgroundColor: const Color.fromARGB(255, 222, 148, 148),
                foregroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x07000000),
                    blurRadius: 16,
                    offset: Offset(0, 16),
                    spreadRadius: 0,
                  )
                ],
                showProgressBar: true,
                closeButtonShowType: CloseButtonShowType.onHover,
                closeOnClick: false,
                pauseOnHover: true,
                dragToClose: true,
                applyBlurEffect: true,
                callbacks: ToastificationCallbacks(
                  onTap: (toastItem) => print('Toast ${toastItem.id} tapped'),
                  onCloseButtonTap: (toastItem) =>
                      print('Toast ${toastItem.id} close button tapped'),
                  onAutoCompleteCompleted: (toastItem) =>
                      print('Toast ${toastItem.id} auto complete completed'),
                  onDismissed: (toastItem) =>
                      print('Toast ${toastItem.id} dismissed'),
                ),
              );
            },
            child: Text(
              'আমাদের কোর্সসমুহ',
              style: TextStyle(
                color: Color.fromARGB(255, 223, 202, 139),
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Flexible(
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: 'লাইভ কোর্স, ওয়েবিনার সার্চ করুন',
                  labelText: 'কোর্স সার্চ করুন',
                  labelStyle: TextStyle(
                      color: Color.fromARGB(255, 223, 202, 139),
                      fontWeight: FontWeight.normal,
                      fontSize: 18),
                  iconColor: Color.fromARGB(255, 223, 202, 139),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 220, 205, 160),
                      fontWeight: FontWeight.w100,
                      fontSize: 12),
                ),
                style: const TextStyle(
                    color: Color.fromARGB(255, 210, 190, 132),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ),
            // height: 20,
            width: 350,

            // color: Color.fromARGB(255, 131, 131, 131),
            // padding: EdgeInsets.all(10),
            // foregroundDecoration: BoxDecoration(
            //   color: Colors.white,

            //   borderRadius: BorderRadius.circular(20)
            // ),
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
