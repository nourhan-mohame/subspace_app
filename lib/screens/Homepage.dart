import 'package:flutter/material.dart';
import 'package:subspace_app/components/customlisttitle.dart';
import 'package:subspace_app/models/artical_model.dart';
import 'package:subspace_app/services/api_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    debugCheckHasMaterial:false;
    return Scaffold(
      appBar: AppBar(
        title: Text("SubSpace App"),
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
      ),

      body:FutureBuilder(
        future:client.getArticles(),
        builder:(BuildContext context,AsyncSnapshot<List<Article>> snapshot){
          if(snapshot.hasData){
            List<Article>? articles = snapshot.data;
            return ListView.builder(
            itemCount: articles?.length,
              itemBuilder:(context,index) =>customlisttitle(articles![index],
              context),


            );
          }
          return Center(child:CircularProgressIndicator(),);
        }
      ),
      );
  }
}