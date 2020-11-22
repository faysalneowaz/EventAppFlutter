import 'package:flutter/material.dart';

class FriendList extends StatelessWidget {

  List<InboxItem> choices = const <InboxItem>[
    const InboxItem(
        title: 'Efaz Ahammed',
        date: '1 June 2019',
        description:
        'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
        imglink:
        'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    const InboxItem(
        title: 'Rony',
        date: '1 June 2016',
        description:
        'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    const InboxItem(
        title: 'Utsho',
        date: '1 June 2019',
        description:
        'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    const InboxItem(
        title: 'Nayon',
        date: '1 June 2017',
        description:
        'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    const InboxItem(
        title: 'Rasel',
        date: '1 June 2018',
        description:
        'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
        imglink:
        'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
    const InboxItem(
        title: 'Ripon',
        date: '1 June 2019',
        description:
        'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
        imglink:
        'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    const InboxItem(
        title: 'Limon',
        date: '1 June 2016',
        description:
        'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    const InboxItem(
        title: 'Liton',
        date: '1 June 2019',
        description:
        'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    const InboxItem(
        title: 'Hatim',
        date: '1 June 2017',
        description:
        'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    const InboxItem(
        title: 'Neowaz',
        date: '1 June 2018',
        description:
        'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
        imglink:
        'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
    const InboxItem(
        title: 'Likhon',
        date: '1 June 2019',
        description:
        'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
        imglink:
        'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    const InboxItem(
        title: 'MacBook Air',
        date: '1 June 2016',
        description:
        'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    const InboxItem(
        title: 'iMac',
        date: '1 June 2019',
        description:
        'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    const InboxItem(
        title: 'Mac Mini',
        date: '1 June 2017',
        description:
        'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    const InboxItem(
        title: 'Mac Pro',
        date: '1 June 2018',
        description:
        'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
        imglink:
        'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
    const InboxItem(
        title: 'Marrage event',
        date: '1 June 2019',
        description:
        'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
        imglink:
        'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    const InboxItem(
        title: 'MacBook Air',
        date: '1 June 2016',
        description:
        'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    const InboxItem(
        title: 'iMac',
        date: '1 June 2019',
        description:
        'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    const InboxItem(
        title: 'Mac Mini',
        date: '1 June 2017',
        description:
        'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    const InboxItem(
        title: 'Mac Pro',
        date: '1 June 2018',
        description:
        'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
        imglink:
        'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
    const InboxItem(
        title: 'Marrage event',
        date: '1 June 2019',
        description:
        'MacBook Pro (sometimes abbreviated as MBP) is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
        imglink:
        'http://www.fedracongressi.com/fedra/wp-content/uploads/2016/02/revelry-event-designers-homepage-slideshow-38.jpeg'),
    const InboxItem(
        title: 'MacBook Air',
        date: '1 June 2016',
        description:
        'MacBook Air is a line of laptop computers developed and manufactured by Apple Inc. It consists of a full-size keyboard, a machined aluminum case, and a thin light structure.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c71.0.206.206a/p206x206/118356958_3412513515467787_5329539925929349462_n.jpg?_nc_cat=109&_nc_sid=b386c4&_nc_ohc=PSNdKH1TgfsAX97sQ2x&_nc_ht=scontent.xx&tp=5&oh=00b1bc8f571f41888ac2317d0d3d8b33&oe=5F8F8FE2'),
    const InboxItem(
        title: 'iMac',
        date: '1 June 2019',
        description:
        'iMac is a family of all-in-one Macintosh desktop computers designed and built by Apple Inc. It has been the primary part of Apple consumer desktop offerings since its debut in August 1998, and has evolved through seven distinct forms.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/p206x206/119447108_3568298839874933_6885976814567593621_o.jpg?_nc_cat=105&_nc_sid=b386c4&_nc_ohc=MhKn-oczUaMAX_ugYd4&_nc_ht=scontent.xx&tp=3&oh=976aa1a9f82dc6eac213c6a6bc7e7f0d&oe=5F8F3FFA'),
    const InboxItem(
        title: 'Mac Mini',
        date: '1 June 2017',
        description:
        'Mac mini (branded with lowercase "mini") is a desktop computer made by Apple Inc. One of four desktop computers in the current Macintosh lineup, along with the iMac, Mac Pro, and iMac Pro, it uses many components usually featured in laptops to achieve its small size.',
        imglink:
        'https://scontent.xx.fbcdn.net/v/t1.0-0/cp0/e15/q65/c80.0.206.206a/p206x206/118193290_1998571216933212_7997842866461013686_o.jpg?_nc_cat=101&_nc_sid=b386c4&_nc_ohc=g3mTgoS7z_oAX82ClSP&_nc_ht=scontent.xx&tp=5&oh=4a1cbe1c4c7cae7fe617673c8f7fcdd1&oe=5F8E8F4C'),
    const InboxItem(
        title: 'Mac Pro',
        date: '1 June 2018',
        description:
        'Mac Pro is a series of workstation and server computer cases designed, manufactured and sold by Apple Inc. since 2006. The Mac Pro, in most configurations and in terms of speed and performance, is the most powerful computer that Apple offers.',
        imglink:
        'https://i0.wp.com/9to5mac.com/wp-content/uploads/sites/6/2017/01/mac-pro-2-concept-image.png?resize=1000%2C500&quality=82&strip=all&ssl=1'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Inbox"),
      ),
      body:ListView.builder(
        itemCount: choices.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(choices[index].imglink),
            ),
            title: Text(choices[index].title),
            // subtitle: Text(choices[index].description,style: TextStyle(fontSize: 12.0,color: Colors.grey),overflow: TextOverflow.ellipsis,),
          );
        },) ,
    );
  }
}


class InboxItem {
  final String title;
  final String date;
  final String description;
  final String imglink;

  const InboxItem({this.title, this.date, this.description, this.imglink});
}
