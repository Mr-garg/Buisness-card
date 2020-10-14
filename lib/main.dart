import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'dart:async';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class user {
  final String name , job , office , whatsap , email , address , specialized , services ,facebook , linkedin , twitter , website;
  const user (

      { this.name, this.job, this.office, this.whatsap, this.email, this.address, this.specialized , this.services ,this.facebook , this.linkedin ,this.twitter , this.website}
);
}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Vi-Cards ';

    return MaterialApp(
      title: appTitle,
      home: Center(
        child: Scaffold(
          appBar:  AppBar(
            backgroundColor: Colors.black,
            title: Center(child: Text(appTitle)),
          ),
          body: MyCustomForm(),
        ),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  var _nameController = new TextEditingController();
  var _jobController = new TextEditingController();
  var _officeController = new TextEditingController();
  var _whatsapController = new TextEditingController();
  var _emailController = new TextEditingController();
  var _addressController = new TextEditingController();
  var _specializedController = new TextEditingController();
  var _servicesController = new TextEditingController();
  var _facebookController = new TextEditingController();
  var _linkedinController = new TextEditingController();
  var _twitterController = new TextEditingController();
  var _websiteController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Name *',
              ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter Your Name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _jobController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.work),
                  hintText: 'What do you do?',
                  labelText: 'Job Title *',
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter Your Job Title';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _officeController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.call),
                  hintText: 'your contact number?',
                  labelText: 'Office Number *',
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter Your Office Number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _whatsapController,
                decoration: const InputDecoration(
                  icon: Icon(SocialMediaIcons.whatsapp),
                  labelText: 'Whatsapp Number *',
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter Whatsapp Number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: 'professional mail id?',
                  labelText: 'Email *',
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter Email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.location_city),
                  hintText: 'your work location?',
                  labelText: 'Address *',
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter Address';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _specializedController,
                decoration: const InputDecoration(
                  icon: Icon(FontAwesomeIcons.tasks),
                  hintText: 'Proffesional skills!',
                  labelText: 'Specialized IN *',
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter Your Skills ';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _servicesController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.settings),
                  hintText: 'What Services You Offer',
                  labelText: 'Services You Offer *',
                ),
                onSaved: (String value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please Enter Services';
                  }
                  return null;
                },
              ),
          TextFormField(
            controller: _facebookController,
            decoration: const InputDecoration(
              icon: Icon(SocialMediaIcons.facebook),
              hintText: 'Optional',
              labelText: 'Facebook Profile URL',
            ),
          ),
              TextFormField(
                controller: _linkedinController,
                decoration: const InputDecoration(
                  icon: Icon(SocialMediaIcons.linkedin),
                  hintText: 'Optional',
                  labelText: 'Linkedin Profile URL',
                ),
              ),
              TextFormField(
                controller: _twitterController,
                decoration: const InputDecoration(
                  icon: Icon(SocialMediaIcons.twitter),
                  hintText: 'Optional',
                  labelText: 'Twitter Profile URL',
                ),
              ),
              TextFormField(
                controller: _websiteController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.web),
                  hintText: 'Optional',
                  labelText: 'Website Profile URL',
                ),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Center(
                  child: RaisedButton(
                    color: Colors.black,
                    onPressed: () {
                      // Validate returns true if the form is valid, or false
                      // otherwise.
                      if (_formKey.currentState.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => myCard(value: user(
                                name: _nameController.text,
                                job: _jobController.text,
                                office: _officeController.text ,
                                whatsap: _whatsapController.text ,
                                email: _emailController.text,
                              address: _addressController.text,
                             services: _servicesController.text,
                              specialized: _specializedController.text,
                              website: _websiteController.text,
                              linkedin: _linkedinController.text,
                              facebook: _facebookController.text,
                              twitter: _twitterController.text
                            )),
                          ),
                        );
                      };
    },

                    child: Text('Submit',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class myCard extends StatefulWidget {
  final user value;

  myCard ({Key key , this.value}) : super(key: key );

  @override
  _myCardState createState() => _myCardState();
}

class _myCardState extends State<myCard> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.cyan.shade800,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('${widget.value.name}\'s card')),
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: (MediaQuery.of(context).size.height)/2 + 20,
            width: (MediaQuery.of(context).size.width)-1,
            color: Colors.white,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(icon: Icon(SocialMediaIcons.facebook), onPressed: _launchUrl),
                      IconButton(icon: Icon(SocialMediaIcons.linkedin), onPressed: _launchURL,
                      ),
                      IconButton(icon: Icon(SocialMediaIcons.twitter), onPressed: _launchurll,),
                      IconButton(icon: Icon(Icons.web_outlined, color: Colors.black,), onPressed: null,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  CircleAvatar(radius: 60, backgroundColor: Colors.black, child: Text('${widget.value.name[0]}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60 ,
                        fontFamily: 'Fondamento',
                    color: Colors.amber),),),
                  SizedBox(height: 21.4,),
                  AutoSizeText('${widget.value.job.toUpperCase()}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                    fontSize: 24.0,
                  ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 130.0,
                    child: Divider(
                      thickness: 2.00,
                      color: Colors.redAccent,
                    ),
                  ),
                  AutoSizeText('${widget.value.name.toUpperCase()}',
                    style: TextStyle(
                      fontFamily: 'Fondamento',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 26.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,

                  ),
                  AutoSizeText('(${widget.value.address.toUpperCase()})',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 19.0,
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child:  RaisedButton(
                          shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: Colors.black),
                          ),
                          onPressed: () => launch("tel://'(${widget.value.office})'"),
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container(

                            padding: const EdgeInsets.all(0.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.phone_in_talk,color: Colors.black,),
                                SizedBox(width: 17),
                                Text('Call',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),

                              ]
                            )
                          ),
                        ),
                            ),
                      SizedBox(width: (MediaQuery.of(context).size.width)/6,),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child:  RaisedButton(
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black),
                          ),
                          onPressed: ()=> FlutterOpenWhatsapp.sendSingleMessage("'+91(${widget.value.whatsap})'", "Hello ${widget.value.name}") ,
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container(

                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                  children: <Widget>[
                                    Icon(Icons.message,color: Colors.black,),
                                    SizedBox(width: 10),
                                    Text('WhatsApp',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),

                                  ]
                              )
                          ),
                        ),
                      ),
                      SizedBox(width: (MediaQuery.of(context).size.width/6.8)
                        ,),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child:  RaisedButton(
                          shape:  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: Colors.black),
                          ),
                          onPressed: () {},
                          textColor: Colors.white,
                          padding: const EdgeInsets.all(0.0),
                          child: Container(

                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                  children: <Widget>[
                                    Icon(Icons.location_on,color: Colors.black,),
                                    SizedBox(width: 10),
                                    Text('Location',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14),),
                                  ]
                              )
                          ),
                        ),
                      ),

                    ],
                          ),

                    ],

                  )

              ),
            ),
          ),
        ),
      );
  }
}
_launchURL() async {
  const url = 'www.google.in';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchurll() async {
  const url = 'www.google.in';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchUrl() async {
  const url = 'www.google.in';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

