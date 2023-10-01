import 'package:flutter/material.dart';
import 'package:subspace_app/models/artical_model.dart';
import 'package:subspace_app/screens/artical_details.dart';

Widget customlisttitle(Article article,BuildContext context){
  return InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder:(context)=>Articalscreen(article:article))
      );
    },
    child: Container(
      margin:EdgeInsets.all(12),
      padding:EdgeInsets.all(8),
      decoration:BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 3,

          ),

        ]
      ),
      child:Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Container(
            height:200,
            width:double.infinity,
            decoration: BoxDecoration(
              image:DecorationImage(
                image:NetworkImage(article.urlToImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          )
         , SizedBox(height: 8,),
          Container(
            padding:EdgeInsets.all(6),
            decoration:BoxDecoration(
              color: Colors.cyan,
              borderRadius:BorderRadius.circular(33),

            ),
            child:Text(article.source.name,style:TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 8,),
          Text(article.title,style:TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 12,
          ),),
        ],
      ),
    ),
  );
}