import 'package:flutter/material.dart';
import 'package:oommaa_abroad/theme/colors.dart';
import 'package:oommaa_abroad/theme/images.dart';

class JobDetailsScreen extends StatelessWidget {
  Widget _headerStatic(String title, String sub) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: colors.subtitle,
            ),
          ),
          SizedBox(height: 5),

          Text(
            sub,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: colors.title,
            ),
          ),


        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        backgroundColor: colors.background,
        iconTheme: IconThemeData(color:colors.primary),
        elevation: 0,
        title: Text("Job Details"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.cloud_upload,
              size: 28,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Image.asset(
              Images.google,
             height: 150,
            ),
          ),
          SizedBox(height: 30),
          Center(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Google Company",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colors.title,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "App Developer",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: colors.subtitle,
                  ),
                ),
              ],
            ) ,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              _headerStatic("salary", "\$85,000"),
              _headerStatic("Employeees", "4500"),
              _headerStatic("Location", "Dubai,Saudi Arabia"),
            ],
          ),
          SizedBox(height:40),
          Row(
            children: [
              Expanded(child: Image.asset(
                Images.museum,
                height: 25,
                color: colors.icon,
              ),
            ),
             Expanded(child: Image.asset(
                Images.clock,
                height: 25,
                color: colors.icon,
              ),
            ),
             Expanded(child: Image.asset(
                Images.map,
                height: 25,
                color: colors.icon,
              ),
            ),
            ],
          ),
          Divider(
            color: colors.icon,
            height: 40,
          ),
          SizedBox(height: 10),
          Text(
            "Job Description",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: colors.title,
            ),
          ),
           SizedBox(height: 10),
           Text(
            "Crafting a captivating job description can help you attract highly qualified candidates for your job opening. A strong job description will make your position stand out from millions of opportunities on other employment websites.",
          
            style: TextStyle(
              fontSize: 15,
              color: colors.subtitle,
            ),
          ),
          TextButton(onPressed: () {},
          style: ButtonStyle(
            // ignore: deprecated_member_use
            padding: MaterialStateProperty.all(EdgeInsets.zero)
          ),
           child: Text(
            "Read More",
            style: TextStyle(
              color: colors.primary,
              fontSize: 15,
               ),           
             ),
           ),
           SizedBox(height:20),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Container(
                    height: 55,
                    width: 50,
                    decoration: BoxDecoration(
                      color: colors.lightGrey,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child:Center(
                      child: Icon(Icons.bookmark_border,
                      color: colors.primary,
                      ),
                    ),
                  ),



             ],
           ),
          ],
        ),
      ),
    );
  }
}
