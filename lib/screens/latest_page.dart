
import 'package:daryo_clone/Models/news.dart';
import 'package:flutter/material.dart';

class LatestPage extends StatelessWidget {
  const LatestPage({Key? key}) : super(key: key);
  static List<News> news = [
    News(
      title: "Karim Benzima Chelsea uyindan so'ng Oltin Top uchun asosiy davogarga aylandi",
      content: "Content",
      date: "16 aprel" ,
      time: "18:30",
      watchCount: "200",
      imgUrl: "https://therealchamps.com/wp-content/uploads/getty-images/2017/07/1360439294.jpeg",
    ),
    News(
        title: "Ronaldo Manchester united da yangi murabbiy kelsa zaxira urindig'ida utiradi degan mish-mishlar bor",
        content: "Content",
        date: "16 aprel" ,
        time: "16:30",
        watchCount: "550",
        imgUrl: "https://phantom-marca.unidadeditorial.es/f05288ebbb00fcefb86713d0b435c7fb/resize/1320/f/jpg/assets/multimedia/imagenes/2021/12/10/16391545485537.jpg",
    ),
    News(
      title: "Yonida pasport yoki ID-kartasi bor haydovchidan “prava” va boshqa hujjatlar talab etilmasligi belgilangan. Ammo haydovchilik guvohnomasi so’raladigan holat ham mavjud",
      content: "Content",
      date: "15 aprel" ,
      time: "5:30",
      watchCount: "1850",
      imgUrl: "https://s.daryo.uz/wp-content/uploads/2022/04/777777.jpg",

    ),
    News(
      title: "APL da 4-o'rin uchun kurash qizg'in, 4-o'rin uchun 4ta kamada davogar bular Totenhem, Manchester united, West Ham va Arsenal",
      content: "Content",
      date: "14 aprel" ,
      time: "11:30",
      watchCount: "2050",
      imgUrl: "https://upload.wikimedia.org/wikipedia/ru/thumb/f/f2/Premier_League_Logo.svg/2560px-Premier_League_Logo.svg.png",

    ),
  ];
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) {
        return newsItem(news[index]);
      },
    );
  }

  Widget newsItem(News news) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Maslahatlar",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('${news.time} | ${news.date} ' , style: TextStyle(color: Colors.grey),),
                  Icon(
                    Icons.visibility,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("${news.watchCount}")
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Image.network(
                news.imgUrl,
                width: 200,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  "${news.title}", style: TextStyle(fontWeight: FontWeight.w500),
                  softWrap: true,
                ),
              )
            ],
          ),
          Divider(thickness: 1.0,)
        ],
      ),
    );
  }
}
