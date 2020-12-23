import 'package:flutter/material.dart';
import 'package:uac_mcf_project/constante/TextWithStyle.dart';


class DetailOpportunity extends StatefulWidget {
  final String titleOpportunity;

  DetailOpportunity({@required this.titleOpportunity});

  @override
  _DetailOpportunityState createState() => _DetailOpportunityState();
}
  class _DetailOpportunityState extends State<DetailOpportunity> {


  List<Activite> mesActivites = [
    new Activite("Bourse d'étude au Canada", Icons.directions_bike),
    new Activite("Bourse d'étude au Maroc", Icons.palette),
    new Activite("Bourse d'étude au Rwanda", Icons.golf_course),
    new Activite("Bourse d'étude au Burkina", Icons.gamepad),
    new Activite("Bourse d'étude à Belgique", Icons.build),
    new Activite("Bourse d'étude au Soudan", Icons.directions_bike),
    new Activite("Bourse d'étude au Japon", Icons.palette),
    new Activite("Bourse d'étude à Ouagadougou", Icons.golf_course),
    new Activite("Bourse d'étude au Canada", Icons.gamepad),
    new Activite("Bourse d'étude au Canada", Icons.build),
    new Activite("Bourse d'étude au Canada", Icons.directions_bike),
    new Activite("Bourse d'étude au Canada", Icons.palette),
    new Activite("Bourse d'étude au Canada", Icons.golf_course),
    new Activite("Bourse d'étude au Canada", Icons.gamepad),
    new Activite("Bourse d'étude au Canada", Icons.build),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Détails sur l\'opportunité'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: new SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(height: 60.0,),
              new TextWithStyle(widget.titleOpportunity),
              SizedBox(height: 30.0,),
              new Card(
                elevation: 10.0,
                child: new Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: new Image.asset("assets/mcflogo.png", fit: BoxFit.fill,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Text("31 Décembre 2020", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              new TextWithStyle("Or la foi est une ferme assurance des choses qu'on espère et une demonstration de celles qu'on ne voit")
            ],
          ),
        ),
      ),
    );
  }

}

class Activite {
  String nom;
  IconData icone;

  Activite(String nom, IconData icone) {
    this.nom = nom;
    this.icone = icone;
  }
}