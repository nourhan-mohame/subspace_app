import 'package:flutter/material.dart';
import 'package:subspace_app/models/artical_model.dart';
class Articalscreen extends StatelessWidget {

 late final Article article;
 Articalscreen({required this.article});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(article.title),
      ),

      body:Padding(
        padding:const EdgeInsets.all(8),
        child:Column(
          mainAxisAlignment:MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ), SizedBox(height: 8,),
            Container(
              padding:EdgeInsets.all(6),
              decoration:BoxDecoration(
                color: Colors.cyan,
                borderRadius:BorderRadius.circular(33),

              ),
              child:Text(article.source.name,style:TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 8,),
            Text(article.description,style:TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 17,
            ),),
          ],
        ),
      ),
    );
  }
}
