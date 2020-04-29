import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          backgroundColor: Colors.black12,
          scaffoldBackgroundColor: Colors.black12),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'The world of Irfan Khan',
          style: TextStyle(
              color: Colors.black, fontSize: 35.0, fontFamily: 'DancingScript'),
        )),
        backgroundColor: Colors.white,
      ),
      body: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Image(
          image: NetworkImage(
              'https://i2.wp.com/www.opindia.com/wp-content/uploads/2020/04/irfan-khan-dies.jpeg?resize=650%2C450&ssl=1'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'The gem of Bollywood',
              style: TextStyle(color: Colors.white, fontSize: 30.0, fontFamily: 'Courgette',),
            ),
          ),
        ),
        Container(
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              card(
                  'https://images.news18.com/optimize/ThhSthjDlULu7wIgCG-d2iAGP-0=/219x147/images.news18.com/ibnlive/uploads/2018/09/Irrfan-Khan.jpg'),
              card(
                  'https://m.media-amazon.com/images/M/MV5BNDg3NDgxNzY4NF5BMl5BanBnXkFtZTcwODMxODQzMg@@._V1_UY317_CR11,0,214,317_AL_.jpg'),
              card(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSEfUV5D1EBJJv4jEPasEfskCiKPyfdxH1V-xuKAfKhJgq9RI0i&usqp=CAU'),
              card(
                  'https://timesofindia.indiatimes.com/thumb/msid-63333425,width-800,height-600,resizemode-4/63333425.jpg?imglength=46501'),
              card(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRcKuSKLluzXIMWm7wRKAncAWSKQpkqYv7Ob8imaKqJLEWsFNdH&usqp=CAU'),
              card(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRfw_Y9avZ7JuF3TKGzD-npZ4rsWXHigkG9XSzdhAtH6ww5jukZ&usqp=CAU'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Masterpiece of the Bollywood',
              style: TextStyle(color: Colors.white, fontSize: 25.0, fontFamily: 'Courgette',),
            ),
          ),
        ),
        Container(
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              card(
                  'https://media-cache.cinematerial.com/p/500x/81gzi6uy/paan-singh-tomar-indian-movie-poster.jpg?v=1456608485'),
              card(
                  'https://lh3.googleusercontent.com/proxy/PL9gDh5JDQiLxl93jB4-E7NItbY3eF8uy8DhLq3ghm5snpSlT3n1Kdofwi1vlmkMdbBQ-h2TCmhDYuCsr5pZ39RevdVJ4Xipcf5PU__UtkFizUJIiNRe8Kw'),
              card('https://contentserver.com.au/assets/649425_karwaan_v8.jpg'),
              card(
                  'https://m.media-amazon.com/images/M/MV5BY2E4NWQ4ZjEtNThlOC00NThjLThmZjgtMWU0MDgzMmYwOGU3XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg'),
              card(
                  'https://img.indiefolio.com/fit-in/1100x0/filters:format(webp):fill(transparent)/project/body/ce50bbb445b0699a94ba28f68be7278e.jpg'),
              card(
                  'https://i.pinimg.com/564x/56/11/25/5611250f5ee41eabe752307f1bd37603.jpg'),
            ],
          ),
        ),
        Center(
          child: Text(
            'We all love you',
            style: TextStyle(color: Colors.white, fontSize: 30.0, fontFamily: 'Courgette'),
          ),
        ),
        card('https://m.media-amazon.com/images/M/MV5BZGU3Y2I4ZWMtZjg4YS00MDJlLTkxZjEtYjdiM2NiOGE3YjBiXkEyXkFqcGdeQXVyNjgxMjg2NDU@._V1_.jpg'),
        Center(
          child: Text('RIP Irfan Sir', style: TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: 'Sacramento'),),
        ),
      ],
    );
  }
}

Widget card(String image) {
  return Container(
    child: Image.network(
      image,
      fit: BoxFit.cover,
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blue, width: 2.0),
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(5.0),
      ),
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.blue,
          blurRadius: 3.0,
          offset: new Offset(0.0, 3.0),
        ),
      ],
    ),
    margin: EdgeInsets.all(15.0),
  );
}
