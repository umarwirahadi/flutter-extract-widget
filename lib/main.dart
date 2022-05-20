import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var faker = Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar extract Widget dengan lib faker'),
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, i) {
            return ChatItem(
                imageUrl: 'https://picsum.photos/id/$i/200/300',
                title: faker.person.name(),
                subTitle: faker.lorem.sentence());
          },
        ),
        /* body: ListView(
          children: [
            ChatItem(imageUrl: "https://picsum.photos/id/1/200/300.jpg",title: faker.person.name(),subTitle: faker.lorem.sentence()),            
            ChatItem(imageUrl: "https://picsum.photos/id/2/200/300.jpg",title: faker.person.name(),subTitle: faker.lorem.sentence()),            
            ChatItem(imageUrl: "https://picsum.photos/id/3/200/300.jpg",title: faker.person.name(),subTitle: faker.lorem.sentence()),            
            ChatItem(imageUrl: "https://picsum.photos/id/4/200/300.jpg",title: faker.person.name(),subTitle: faker.lorem.sentence()),            
            ChatItem(imageUrl: "https://picsum.photos/id/5/200/300.jpg",title: faker.person.name(),subTitle: faker.lorem.sentence()),            
          ],
        ), */
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  ChatItem({Key? key, this.imageUrl = '', this.title = '', this.subTitle = ''});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Text('10:10:PM'),
    );
  }
}
