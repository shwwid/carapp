import 'package:car_rental_serious/data.dart';
import 'package:car_rental_serious/login.dart';
import 'package:flutter/material.dart';
import 'package:car_rental_serious/components/text_box.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, required NavigationItem item});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<void> editField(String field) async{
    String newValue = "";
    await showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black,
        title:const Text(
          "Change",
          style: TextStyle(color: Colors.white),
        ),
        content: TextField(
          autofocus: true,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Enter New $field",
            hintStyle: TextStyle(color: Colors.grey),
          ),
          onChanged: (value) {
            newValue = value;
          },
        ),
        actions: [
          //cancel
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel', style: TextStyle(color: Colors.white),
            ),
          ),
          //save
           TextButton(
            onPressed: () => Navigator.of(context).pop(newValue),
            child: Text('Save', style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ), 
    );
    //update in firebase

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Customer Profile Details'),
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          titleTextStyle: TextStyle(
            color: const Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
        ),

        body: Stack(
          children: [
            ListView(
              children: [
                const SizedBox(height: 50),
                //profile pic
                Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 72,
                ),
            
                const SizedBox(height: 40), 
            
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'My details',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      ),
                  ), 
                
                ),
                //First Name
                MyTextBox(
                  text: 'XYZ', 
                  sectionName: 'First Name',
                  onPressed: () => editField('First Name'),
                  ),
            
                //Last Name
                MyTextBox(
                  text: 'PQR', 
                  sectionName: 'Last Name',
                  onPressed: () => editField('Last Name'),
                  ),
                //D.O.B
                MyTextBox(
                  text: 'XX/XX/XXXX', 
                  sectionName: 'D.O.B',
                  onPressed: () => editField('D.O.B'),
                  ),
                //Phone Number
                MyTextBox(
                  text: '+91 XXX XX XXXX', 
                  sectionName: 'Phone Number',
                  onPressed: () => editField('Phone Number'),
                  ),
                MyTextBox(
                  text: 'xyz@gmail.com', 
                  sectionName: 'E-Mail',
                  onPressed: () => editField('E-Mail'),
                  ),
                //Documents
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Text(
                    'My Documents (Aadhar & License)',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      ),
                  ), 
                ),
              ],
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ), 
              child: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
               )
              ),
            ),
          ],
        ),
      );
  }
}