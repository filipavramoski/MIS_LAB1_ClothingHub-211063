import 'package:flutter/material.dart';
import '../widgets/clothes_list_view.dart';
import '../models/clothing.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Random random = Random();

  final List<String> imageUrls = [
    'https://t3.ftcdn.net/jpg/03/34/79/68/360_F_334796865_VVTjg49nbLgQPG6rgKDjVqSb5XUhBVsW.jpg',
    'https://contents.mediadecathlon.com/p2511365/b56ebd41ddfccff9283ab6dcdbb0b224/p2511365.jpg',
    'https://img.myloview.com.br/adesivos/modelo-em-branco-rosa-jaqueta-com-zipado-frente-e-traseira-vista-isolada-no-fundo-branco-mockup-jaqueta-esporte-de-inverno-para-seu-projeto-400-148059478.jpg',
    'https://t3.ftcdn.net/jpg/03/51/34/08/360_F_351340803_L9IokosgWo3JmeecNaVbpf0z9sMRYZzk.jpg',
    'https://static01.nyt.com/images/2023/12/08/multimedia/08OPEN-THREAD-tmpv/08OPEN-THREAD-tmpv-videoSixteenByNine3000-v2.jpg',
    'https://img.myloview.com.br/adesivos/revestimento-azul-do-molde-vazio-para-baixo-com-vista-fechado-dianteira-e-traseira-isolada-no-fundo-branco-mockup-jaqueta-de-inverno-para-seu-projeto-700-146728653.jpg',
    'https://t4.ftcdn.net/jpg/02/35/26/65/360_F_235266583_btdAgtlSwRWcSbMTAgUHZ7yTp1f1DK5e.jpg'
  ];

  late List<Clothes> clothes;

  @override
  void initState() {
    super.initState();

    imageUrls.shuffle(random);

    clothes = List.generate(
      5,
      (index) => Clothes(
        id: index,
        name: "Clothing $index",
        img: imageUrls[index % imageUrls.length],
        size: ["M", "L", "S"][random.nextInt(3)],
        price: 29.99 + index * 4,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_sharp,
            color: Colors.white,
            size: 24,
          ),
        ),
        title: const Text(
          "211063",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ClothesListView(clothes: clothes),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}
